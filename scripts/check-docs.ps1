# 作成日: 2026-09-26
# 更新日: 2026-10-02
# Read-only checks. Does not inspect remote accounts or validate external URLs.
param([string]$RepositoryRoot = (Split-Path $PSScriptRoot -Parent))
$ErrorActionPreference = 'Stop'
$rootPath = (Resolve-Path -LiteralPath $RepositoryRoot).Path
$files = @(git -c core.quotepath=false -C $rootPath ls-files --cached --others --exclude-standard -- '*.md' | Sort-Object -Unique)
if ($LASTEXITCODE -ne 0 -or $files.Count -eq 0) { throw 'Could not list repository Markdown files.' }
$issues = [System.Collections.Generic.List[string]]::new()
$sampleLinks = 0
foreach ($file in $files) {
    $path = Join-Path $rootPath $file
    $body = [IO.File]::ReadAllText($path)
    # Catch unclosed examples before stripping code blocks: one missing fence can
    # otherwise hide the rest of a guide from both readers and these checks.
    $openFence = $null
    foreach ($line in ($body -split '\r?\n')) {
        if ($line -match '^ {0,3}(`{3,}|~{3,})(.*)$') {
            $marker = $Matches[1]
            $tail = $Matches[2]
            if ($null -eq $openFence) { $openFence = $marker }
            elseif ($marker[0] -eq $openFence[0] -and $marker.Length -ge $openFence.Length -and $tail.Trim() -eq '') { $openFence = $null }
        }
    }
    if ($null -ne $openFence) { $issues.Add("$file : unclosed code fence") }
    $body = [regex]::Replace($body, '(?s)<!--.*?-->', '')
    # Ignore fenced examples, including their example dates and file links.
    $fence = ([string][char]96) * 3
    $body = [regex]::Replace($body, '(?ms)^(' + $fence + '|~~~)[^\r\n]*\r?\n.*?^\1[^\r\n]*(?:\r?\n|$)', '')
    $detailsDepth = 0
    foreach ($tag in [regex]::Matches($body, '</?details\b[^>]*>', 'IgnoreCase')) {
        if ($tag.Value.StartsWith('</')) { $detailsDepth-- } else { $detailsDepth++ }
        if ($detailsDepth -lt 0) { $issues.Add("$file : unmatched closing details tag"); $detailsDepth = 0 }
    }
    if ($detailsDepth -ne 0) { $issues.Add("$file : unclosed details tag") }
    $isBlankForm = ($file.StartsWith('templates/') -and $file -ne 'templates/README.md') -or $file -eq 'questions.md' -or $file -eq 'index.md'
    foreach ($label in @('作成日', '更新日')) {
        $pattern = '(?m)^- ' + $label + ':([^\r\n]*)'
        $matches = [regex]::Matches($body, $pattern)
        if ($matches.Count -ne 1) { $issues.Add("$file : expected one $label field"); continue }
        $value = $matches[0].Groups[1].Value.Trim()
        if ($isBlankForm) {
            if ($value -ne '') { $issues.Add("$file : template $label must be blank") }
        } elseif ($value -ne '未確認') {
            $dateValue = [datetime]::MinValue
            if (-not [datetime]::TryParseExact($value, 'yyyy-MM-dd', [Globalization.CultureInfo]::InvariantCulture, [Globalization.DateTimeStyles]::None, [ref]$dateValue)) {
                $issues.Add("$file : invalid $label")
            }
        }
    }
    foreach ($link in [regex]::Matches($body, '\]\(([^)]+)\)')) {
        $target = $link.Groups[1].Value.Trim().Trim('<','>')
        if ($target -match '^[a-zA-Z][a-zA-Z0-9+.-]*:' -or $target.StartsWith('#')) { continue }
        $target = [uri]::UnescapeDataString(($target -split '#',2)[0])
        if ($target -match 'YYMMDD|ファイル名') { $sampleLinks++; continue }
        if ($target -and -not (Test-Path -LiteralPath (Join-Path (Split-Path $path -Parent) $target))) {
            $issues.Add("$file : missing link target $target")
        }
    }
}
$version = [IO.File]::ReadAllText((Join-Path $rootPath 'VERSION')).Trim()
$readme = [IO.File]::ReadAllText((Join-Path $rootPath 'README.md'))
if (-not $readme.Contains("版: **$version**")) { $issues.Add('README.md : version differs from VERSION') }
if ($issues.Count) { $issues | ForEach-Object { Write-Output $_ }; exit 1 }
Write-Output "PASS: $($files.Count) Markdown files; date fields, blank forms, relative file targets, fences, details, version. Skipped $sampleLinks placeholder links."
Write-Output 'Not checked: external URLs, heading anchors, authentication, app behavior, AI compliance, personal-data leakage.'
