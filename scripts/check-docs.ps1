# 作成日: 2026-09-26
# 更新日: 2026-09-26
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
    $body = [regex]::Replace($body, '(?s)<!--.*?-->', '')
    # Ignore fenced examples, including their example dates and file links.
    $fence = ([string][char]96) * 3
    $body = [regex]::Replace($body, '(?ms)^(' + $fence + '|~~~)[^\r\n]*\r?\n.*?^\1[^\r\n]*(?:\r?\n|$)', '')
    $isBlankForm = $file.StartsWith('templates/') -or $file -eq 'questions.md'
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
if ($issues.Count) { $issues | ForEach-Object { Write-Output $_ }; exit 1 }
Write-Output "PASS: $($files.Count) Markdown files; date fields, blank forms, relative file targets. Skipped $sampleLinks placeholder links."
Write-Output 'Not checked: external URLs, heading anchors, authentication, app behavior, AI compliance, personal-data leakage.'
