# 依頼の記録: /save-prompt スキルの作成

- 作成日: 2026-09-27
- 更新日: 2026-09-27
- 依頼日: 2026-09-27
- 依頼者: 利用者
- 使ったAI: Claude Code
- 添付: なし

## プロンプト本文

```text
docs/prompt/ フォルダに、上の　プロンプト本文　と　その結果の内容をまとめたものを　YYMMDD-(複数あれば連番 01 など)-題名.md という名前で保存して、それまでのすべての変更をgit addしてmainにpushすることを、　スキル　/save-prompt として保存して下さい
```

## 結果の要約

- Claude Code のプロジェクトスキルとして `.claude/skills/save-prompt/SKILL.md` を作成した。手順は、日本時間の日付確認、前回の保存以降の依頼の特定、`docs/prompt/YYMMDD-NN-title.md` の命名（連番は既存ファイルを見て決め、上書きしない）、依頼本文をフェンスで囲んで原文のまま記録、`git add -A` してコミット、`origin/main` に遅れていれば rebase、`git push -u origin main`、GitHub 上の main を読み直して報告、の順。
- `docs/prompt/README.md` を作り、フォルダの目的と記録一覧を書いた。README.md の管理者向けの行にリンクを追加した。
- 直前の依頼（260927-01）もこの形式で記録した。
- 追加したファイル: `.claude/skills/save-prompt/SKILL.md`、`docs/prompt/README.md`、`docs/prompt/260927-01-push-to-main.md`、`docs/prompt/260927-02-save-prompt-skill.md`。変更したファイル: `README.md`
- コミット: b8ecae4「docs: add /save-prompt skill and docs/prompt request log」
- 注意: `scripts/check-docs.ps1` がすべての Markdown に作成日・更新日の行をちょうど1つずつ求めるため、依頼本文はフェンスで囲む決まりにした。

## 追記（2026-09-27）

- 検査を再現したところ `templates/README.md`（用紙ではなく説明文）が「templates/ は日付欄を空欄」の判定に当たったため、`scripts/check-docs.ps1` の判定から `templates/README.md` を除外した。

## 関連

- [依頼と結果の記録の説明](README.md)
- [260927-01 今後は main に直接 push する](260927-01-push-to-main.md)
