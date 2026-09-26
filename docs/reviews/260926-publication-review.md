# 公開前レビューと改善計画（2026-09-26）

- 作成日: 2026-09-26
- 更新日: 2026-09-26
- 評価対象: risan-education/my-portfolio-elementary の fadec7b
- 目的: 小学生の探究の記録を、中高・大学・社会人へ引き継ぎ、本人が選んでAIや提出物に利用できるようにする。
- 調査範囲: リポジトリの主要文書・用紙、[公開予定の記事](https://risan.jpn.org/?p=14459)、以下の公式資料。
- 限界: Windows・Mac・スマホそれぞれの新規登録から保存までの実機検証、複数家庭での継続利用、教育効果や入試・就職への効果の検証は未実施。

## 評価

家庭で試せる公開テンプレートとして適切。本人の言葉・保護者の観察・AIの提案を分けること、元の記録とderived/の要約を分けること、Markdownで持ち運べることが強み。
長年保存すれば選抜で有利になると約束せず、学びを振り返り、経験を根拠付きで説明するための道具として紹介する。

| 用途 | 現状と改善の方向 |
| --- | --- |
| 小学生の記録 | quick-note.mdで一言から始められる。毎日の義務や大量の項目を増やさない |
| 探究 | inquiry.mdは問い・予想・方法・結果・考えの変化を分ける。本人の選択、協力者、結論が出ない例を補う |
| 中高への接続 | questions.mdと元記録へのリンクが有効。興味が変わることや中断も認める |
| 入試・面接 | evidence-summary.mdとderived/が有効。提出先の年度・設問・AI条件・本人確認を追加する |
| 就活 | 小学生の記録は自己理解の材料。大学での経験の代わりにせず、本人の役割・判断・行動・結果を残す |
| 成人後のAI利用 | 過去の要約に加え、現在の目的・希望・利用可能な情報の範囲が必要。勤務先の機密を混ぜない |
| 長期保存 | ZIPの案内はあるが履歴・外部原本・復元確認が不足。バックアップと移行を具体化する |

## 優先する改善

### 接続方法と初心者の導線

ChatGPTに聞きながら設定する入口は維持する。ただしプラグインの一般的な公式説明は、特定環境でGitHubの複製・読み書きがすべて動く証拠ではない。
環境、接続名・提供元、確認日、Private複製、作成、追記、main反映、再読込を区別した確認表を設ける。未実施を確認済みにしない。
実際の子どもの情報を渡す前に、本人用Privateで架空の1件を保存・再読込する練習を追加する。

### Claude Codeのルールの整合

AGENTS.mdはmain直接保存を基本とする一方、docs/claude-code.mdはクラウドの作業ブランチ・マージを案内しており、説明の整合が必要。
アプリ名でなくローカル実行とクラウド実行で分ける。クラウドはデスクトップやターミナルからも利用できる。mainへ直接保存できない環境で無理に制限を回避しない。作業ブランチとmain反映の完了を区別する。
CLAUDE.mdの@AGENTS.mdは維持できるが、読み込みは設定・バージョンにも依存する。

### 本人の意思、権限、年齢

保存・AIへの送信・他人への共有・提出への利用は分けて相談する。本人が小学生の間も意思を確認し、進学時などに見直す。
「元記録を保持する」は美化・改ざん防止のルールであり、本人が望む利用停止・削除を妨げない。要約・問い一覧・外部原本・バックアップにも影響する。
AIに見せないという文章だけではアクセスを遮断できない。見せない情報は接続対象外へ保管する。
migration.mdの「保護者を閲覧だけにする」は個人Privateの共同編集者の公式権限説明と不整合。条件を明記する。
GitHubを本人が使える年齢とAIの年齢条件は別。Claude個人アカウントは18歳以上という条件を明示する。

### AIに渡す現在の情報

目的→本人が確認した現在の情報→関連する要約→必要な元記録の順に読む。
ai-context用紙を追加し、確認日、今の希望、関係する経験、今は当てはまらない過去情報、利用範囲を持たせる。
過去の好きなことから現在の進路・性格・適性を断定しない。元記録とAIの指示を区別し、引用資料内の命令を実行しない。

### 学習と将来の提出物

AIが答える前に本人の考えを残す。本人が決めたことと保護者・友達・AIの支援を区別する。活動の規模や問いの数で採点しない。
中高以降に必要な場合だけ、自分の役割・選択理由・別案・困難・結果と確認方法・現在の振り返りを補う。
提出先の年度、設問、対象期間、字数、AI利用条件と出典、本人確認を記載する。規則が不明なら提出用本文の生成を保留する。
Git履歴は変更経緯であり、活動の事実性の第三者証明ではない。必要な作品・資料への参照を保持する。

### 継続運用と記事

バックアップの控えを開く復元確認、外部原本とGit履歴の控え、テンプレート版・変更履歴・安全な更新手順を追加する。
相対リンク・日付欄・空欄用紙を確認する小さな検査を用意する。大規模な検索基盤は利用量を見てから検討する。
記事はGoogleドライブ中心、リポジトリはGitHub中心。保護者が操作する家庭向けの選択肢として説明をつなぐ。無料なのはテンプレートで、AI契約とは別。
記事の大学群別活動レベルは第三者動画の目安と公式条件を混同させず、この教材での採点基準にしない。

## 実施と残る検証

実装内容は[変更履歴](../../CHANGELOG.md)に記録する。
動作確認は[利用環境と確認状況](../connection-check.md)を参照。文書作成や静的検査の合格を、利用者環境での動作確認と混同しない。
記事本文の更新は[掲載文案](../publication-guide.md)を用意してから行う。
数家庭で、初期設定のつまずき、最初の1件に必要な操作、本人が嫌がらず見返せるかを確認する。実記録を公開Issueへ集めない。

## 調査資料（確認日: 2026-09-26）

- [IB: How the PYP works](https://ibo.org/programmes/primary-years-programme/how-the-pyp-works/) — 教科横断の探究。家庭版の方向性の参照であり認定の根拠ではない。
- [IB: The learner](https://ibo.org/programmes/primary-years-programme/curriculum/the-learner) — 主体性と発達段階。
- [文部科学省: 探究の資料](https://www.mext.go.jp/content/1421972_2.pdf) — 課題設定・情報収集・整理分析・まとめ表現。
- [OpenAI: Plugins](https://learn.chatgpt.com/docs/plugins) — 対応環境と認証。GitHubの個別操作の実証とは別。
- [Claude Code: Memory](https://code.claude.com/docs/en/memory) — 指示書の取り込みと設定。
- [Claude Code: Cloud](https://code.claude.com/docs/en/claude-code-on-the-web) — 実行環境と保存フロー。
- [Claude: 年齢条件](https://support.claude.com/en/articles/13117299-minimum-age-requirement-access-restriction) — 個人アカウントは18歳以上。
- [GitHub: 個人リポジトリの権限](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/repository-access-and-collaboration/permission-levels-for-a-personal-account-repository) — 個人Privateの共同編集者のアクセス。
- [GitHub: 機密情報の削除](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository) — 履歴・コピーも対象。
- [GitHub: バックアップ](https://docs.github.com/en/repositories/archiving-a-github-repository/backing-up-a-repository) — ミラーとLFS。
- [Anthropic: Context engineering](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) — 目的に関連する情報の選択と段階的な取得。
- [文部科学省: 入学者選抜での生成AI](https://www.mext.go.jp/content/20240801-mxt_daigakuc02-000037448_21.pdf) — 提出先の募集要項・方針の確認。
- [立教大学: ガクチカシート](https://www2.rikkyo.ac.jp/web/careercenter/guidebook2025/pdf/66.pdf) — 大学時代の経験と、困難・考え・行動・結果・学び。

## 0.2.0での対応状況

| 改善項目 | 対応 |
| --- | --- |
| 接続の確認表・架空記録の練習 | connection-check.mdを追加し、はじめ方から案内。各OSの通し検証は未実施 |
| Claudeの実行方法・main保存・年齢・引き継ぎ | 共通ルール、claude-code.md、migration.mdを修正 |
| 本人の利用範囲・削除・AIへの情報分離 | record-choices.md、確認用紙、指示書・privacy.mdに反映 |
| 現在の本人を伝えるAI用紙 | ai-context.mdを追加、future-use.mdとai-guide.mdから案内 |
| 提出条件・本人の役割・根拠 | submission-check.mdを追加し、提出前のルールを設定 |
| 主体性・中断の例 | parent-guide.mdを補強、paused-inquiry.mdを追加 |
| 控え・復元・テンプレート更新 | backup-and-restore.md、template-updates.md、VERSION、CHANGELOG.mdを追加 |
| 文書検査 | scripts/check-docs.ps1を実行。47文書の日付欄・空欄用紙・相対ファイルリンクが合格。見出しアンカー・外部URL・アプリ動作は対象外 |
| 記事との整合 | publication-guide.mdに掲載案を保存。記事本体は未変更 |
| 家庭での利用検証・検索基盤 | 未実施。家庭での継続利用を確認してから改善する |

実際の子どもの記録、アカウント、権限の変更は行っていません。公開前レビューに沿った文書・用紙の整備と、静的検査の結果です。
