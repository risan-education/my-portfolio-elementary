# 依頼の記録: 今後は main に直接 push する

- 作成日: 2026-09-27
- 更新日: 2026-09-27
- 依頼日: 2026-09-27
- 依頼者: 利用者
- 使ったAI: Claude Code
- 添付: なし

## プロンプト本文

```text
今後、すべて、mainにpushでお願いします /save-prompt
```

## 結果の要約

- `/save-prompt` は当時まだスキルとして存在しなかったため実行できず、代わりに指示を恒久化するため `CLAUDE.md` に「常に main に直接コミットして origin/main へ push する。作業ブランチや pull request は作らない」という利用者の指示を追記した。
- 変更したファイル: `CLAUDE.md`
- コミット: 6949bd9「docs: record the standing instruction to push directly to main」（main に push 済み、GitHub 上で確認）
- 未実施: `/save-prompt` の実行。次の依頼（260927-02）でスキルとして作成した。

## 関連

- [Claude Code の補足](../claude-code.md)
- [260927-02 /save-prompt スキルの作成](260927-02-save-prompt-skill.md)
