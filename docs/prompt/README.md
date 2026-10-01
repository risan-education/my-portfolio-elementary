# 依頼と結果の記録（管理者用）

- 作成日: 2026-09-27
- 更新日: 2026-10-02

配布元の管理者が AI に出した依頼（プロンプト）の原文と、その結果の要約を 1 件ずつ保存するフォルダです。「なぜこの変更をしたか」をあとからたどるための作業記録で、子どもの実記録の置き場ではありません。

- ファイル名: `YYMMDD-NN-title.md`（`NN` はその日の連番、`title` は英語かローマ字）。
- 保存のしかた: 配布元の保守作業では、Codex・Claude Codeなどの編集ツールを問わず、毎回 `/save-prompt` を適用します。`.claude/skills/save-prompt/SKILL.md` にこのリポジトリ用の形式があり、依頼と結果を記録して全変更を確認し、mainへコミット・pushします。本人用Privateでの記録案には自動適用しません。
- 依頼本文は原文のままフェンスで囲んで残し、要約に置き換えません。パスワードや本名などは伏せます。

## 記録一覧

- [260927-01 今後は main に直接 push する](260927-01-push-to-main.md)
- [260927-02 /save-prompt スキルの作成](260927-02-save-prompt-skill.md)
- [260927-03 READMEをChatGPT前提にし、目的とメリットを追加](260927-03-chatgpt-readme-purpose.md)
- [261002-01 記録の保存先・呼び出し方・一覧の明記と、毎回の /save-prompt](261002-01-record-locations-and-index.md)
- [261002-02 ポートフォリオ全体のレビューと改善](261002-02-portfolio-review-improvements.md)
- [261002-03 例04の注意書き削除と簡潔さのルール](261002-03-simplify-example-notes.md)
