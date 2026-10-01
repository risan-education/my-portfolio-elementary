# 依頼の記録: 記録の保存先・呼び出し方・一覧の明記と、毎回の /save-prompt

- 作成日: 2026-10-02
- 更新日: 2026-10-02
- 依頼日: 2026-10-02
- 依頼者: 利用者
- 使ったAI: Claude Code
- 添付: なし

## プロンプト本文

```text
それぞれの記録が、どのフォルダに保存されるのか、どのように呼び出せばよいか？どこにリストがあるか、記載してください　今後、毎回、/save-prompt
```

## 結果の要約

- `docs/finding-records.md` を新設。記録の種類ごとの用紙・保存先フォルダ・ファイル名の例の表、一覧の場所（index.md、questions.md、フォルダ）、ChatGPTでの呼び出し方（「ダンゴムシの記録を見せて」「10月の記録を一覧にして」など）、GitHubの画面で開く手順、一覧がずれたときの直し方を記載。
- 記録一覧 `index.md` を新設。新しい記録を保存するたびにAIが「活動日／種類／題名／ファイル／記録者／最終更新」を1行足す目次。配布版では日付欄と表を空欄にし、`scripts/check-docs.ps1` の空欄扱いに `index.md` を追加。
- AGENTS.md に、保存時に index.md へ1行足すこと、追記では行を足さず最終更新だけ直すこと、「◯◯の記録を見せて」「一覧にして」への応答のしかた、「index.md をフォルダと照らし合わせて」の扱いを追加。Copilot用指示にも要約を1行。
- README の「保存する場所」の表に `index.md` を追加し、保護者向けガイドに finding-records.md へのリンクを追加。docs/child-mode.md と CHANGELOG 0.4.0 にも記載。
- CLAUDE.md に「毎回、作業の最後に /save-prompt を実行する」という利用者の指示を追記し、この記録を最初の実行とした。
- 追加したファイル: `index.md`、`docs/finding-records.md`、`docs/prompt/261002-01-record-locations-and-index.md`。変更したファイル: `AGENTS.md`、`.github/copilot-instructions.md`、`README.md`、`CLAUDE.md`、`CHANGELOG.md`、`docs/child-mode.md`、`docs/prompt/README.md`、`scripts/check-docs.ps1`
- コミット: この記録のコミット
- 未確認: `scripts/check-docs.ps1` 本体は PowerShell がない環境のため未実行。同じ検査を Python で再現して通ることは確認。

## 関連

- [記録の保存先・一覧・呼び出し方](../finding-records.md)
- [記録一覧](../../index.md)
