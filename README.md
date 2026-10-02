# わたしの「なんで？」ノート

- 作成日: 2026-09-25
- 更新日: 2026-10-02

## 小学生の My ポートフォリオ

**保護者がChatGPTに話しかけて、子どもの体験・「なんで？」・作品・考えの変化を、本人の言葉のまま残す教材です。** 「なんでだろう」「やってみたい」「うまくいかなかった」を一言から。ChatGPTが用紙に整え、保護者と子どもが内容を確かめて、保護者が管理する **Private（非公開）GitHubリポジトリ** に保存します。絵でも、一言でも、おとなに話した言葉でも大丈夫。毎日書く必要も、すべての欄を埋める必要もありません。

**子どもは体験とことばの主役。ChatGPTへの入力とGitHubへの保存は保護者が担当します。** 入試の実績づくりを急がず、そのときの興味を大切にします。

版: **0.4.3** ／ [はじめ方（ChatGPTの登録・設定から保存まで）](docs/getting-started.md) ／ [AIに整理を頼むとき](docs/ai-guide.md) ／ [なぜ小学生のうちから記録するのか](docs/why-portfolio.md)

### まず使ってみる

| したいこと | 開くところ |
| --- | --- |
| 一言を残す | [公園での一言](examples/prompts/01-first-quick-note.md) ／ [質問なしの最短例](examples/prompts/06-one-line.md) |
| 続きを足す | [翌日の追記](examples/prompts/03-add-next-day.md) |
| あとで読む | [記録を呼び出す例](examples/prompts/07-read-record.md) ／ [記録一覧](index.md) |
| ほかの使い方を選ぶ | [19の例の一覧](examples/prompts/README.md) |

### 5分で一言を残す（初期設定済みの方）

初めての方は[はじめ方](docs/getting-started.md)で、利用できる接続と保存方法を確認し、自分用のPrivateを用意します。必要な有料プランは対応状況を確認してから選びます。

1. 保護者がChatGPTを開きます。新しい会話では自分用のPrivateリポジトリのURLを添えて「AGENTS.mdを読んで、記録を始める準備をしてください」と送ります。指示書と保存先を読めていることを確認します。
2. 子どもの一言と活動日をメモのまま送ります。架空例: 「10月3日、公園でダンゴムシを見つけて『なんで丸くなるの？』と言った。」実際に使うときは自分の内容に置き換えます。
3. 文章案を子どもと読み直し、よければ「この内容で保存してください」と送ります。追加の質問に答えなくても保存できます。「質問は不要」と伝えても構いません。
4. 返ってきたリンクでmainのファイルを開き、内容を確認します。**チャットに案が表示されただけでは未保存です。** 次は「ダンゴムシの記録を見せて」で読み返せます。

接続が読み取り専用なら、案を保護者が自分用の非公開の保管先に保存します。[接続確認](docs/connection-check.md)では、架空の記録で新規作成・追記・再読み取りを練習できます。無料なのは用紙で、利用するサービスの費用は別です。

### 子どもといっしょに

例えば次の中から一つだけ、聞いてみます。答えを求めて続けて質問する必要はありません。

> なにを見つけた？
>
> どこがふしぎだった？
>
> つぎは、なにをためしてみたい？

答えが出なくても、途中でやめても大丈夫。「わからない」も大切な記録です。

慣れてきたら、[本人モード](docs/child-mode.md)も使えます。保護者がChatGPTの質問を子どもに伝え、本人の言葉をそのまま入力します。ChatGPTとの操作・対話は保護者が担当します。「おわり」で、確認済みの本人用Privateへ保存されます。「保存しない」という希望があれば保存しません。

### このノートで大切にすること

そのときの「なんで？」「やってみたい」「うまくいかなかった」を残し、あとで読み返して、次にしたいことやお休みしたいことを本人が選べるようにします。一言、途中、わからないままでも十分です。

探究学習・自己理解・将来の説明やAIへの背景共有にどうつながるかは、[目的と根拠](docs/why-portfolio.md)と[将来の使いみち](docs/future-use.md)にまとめています。本教材そのものの学習効果や、入試・就職の結果を検証・保証したものではありません。

### 使いたいものから選ぶ

| こんなとき | 用紙 |
| --- | --- |
| 1〜3年生・まず一言 | [ひとこと記録](templates/quick-note.md) |
| 体験・読書・習い事を残す | [体験の記録](templates/experience.md) |
| 4〜6年生・問いを調べる／試す | [探究ノート](templates/inquiry.md) |
| 複数の活動をつなげて探究する | [家庭の単元づくりシート](templates/unit-of-inquiry.md) |
| 工作・絵・プログラムを残す | [作品カード](templates/work.md) |
| ときどき見返す | [ふりかえり](templates/reflection.md) |
| 1年の思い出を選ぶ | [年間ふりかえり](templates/annual-review.md) |
| 数年分の記録を根拠付きでまとめる | [根拠付き要約](templates/evidence-summary.md) |

学年は目安です。話す・描く・保護者が書きとめる方法を自由に組み合わせてください。

### 保存する場所

| 場所 | 内容 |
| --- | --- |
| `profile/` | 好きなこと・興味（任意） |
| `experiences/` | 日々の体験・読書・疑問 |
| `projects/` | 続けて調べる探究・作品 |
| `reflections/` | ときどきのふりかえり |
| `annual-review/` | 年間ふりかえり |
| `questions.md` | 本人の問いを日付付きでためる台帳 |
| `derived/` | 記録から作る要約・報告書の下書き（原記録は変えない） |
| `index.md` | 保存した記録の一覧（新規ファイルごとに1行、追記は更新） |
| `assets/` | 写真・PDFの控えや所在メモ |
| `templates/` | コピーして使う空欄の用紙 |
| `examples/` | **すべて架空**の記入例。本人の実績に含めません |

### 保護者向けガイド

- [GitHubって何？ 登録とログインのしかた](docs/github-basics.md)
- [はじめ方（ChatGPTの登録・設定から保存まで）](docs/getting-started.md)
- [探究の伴走のしかた](docs/parent-guide.md)
- [IB PYPのUOIを参考にした家庭の探究づくり](docs/pyp-uoi-guide.md)
- [個人情報と写真・作品の扱い](docs/privacy.md)
- [AIに整理を頼むとき](docs/ai-guide.md)
- [ChatGPTへの話しかけ方と、できあがる記録の例（架空）](examples/prompts/README.md)
- [本人モード: 保護者が子どもの言葉を取り次ぐ](docs/child-mode.md)
- [記録の保存先・一覧・呼び出し方](docs/finding-records.md)
- [なぜ小学生のうちから記録するのか（目的とメリットの根拠）](docs/why-portfolio.md)
- [将来の使いみち: 探究・入試・就活・AIのコンテキスト](docs/future-use.md)
- [作成日・更新日のルール](docs/file-dates.md)
- [中学生になったら（引き継ぎと本人への移譲）](docs/migration.md)
- [架空の記入例](examples/README.md)
- [記録を使う範囲・利用停止・削除](docs/record-choices.md)
- [バックアップと復元](docs/backup-and-restore.md)
- [テンプレートの更新](docs/template-updates.md)
- 補足: [Copilotの初期設定](docs/copilot-setup.md) / [中学生とCopilotの無料利用](docs/copilot-students.md) / [Claude Code（自分で設定できる方向け）](docs/claude-code.md)

この公開リポジトリは空の用紙と架空例の配布用です。**実際の子どもの記録を、このリポジトリのIssue・PRに投稿しないでください。**
ChatGPTでの作成・編集を基本に案内します。CopilotやClaude Codeを希望する方向けの補足もありますが、ChatGPTの契約を他のツールの利用者に強制しません。手動編集の手順も補足として残しています。自動公開・自動送信の仕組みは含みません。

### 必要になったときの用紙

- [今の自分をAIに伝える](templates/ai-context.md)
- [提出条件を確認する](templates/submission-check.md)
- [記録を使う範囲を見直す](templates/record-use-review.md)

管理者向け: [公開前レビュー](docs/reviews/260926-publication-review.md) / [記事への掲載案](docs/publication-guide.md) / [変更履歴](CHANGELOG.md) / [依頼と結果の記録](docs/prompt/README.md)

### 著作権とライセンス

Copyright © 2026 adash333

本リポジトリのオリジナルの文章・テンプレート・架空の記入例は、
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.ja)で提供します。
これらの著作権はadash333に帰属し、著作権を放棄するものではありません。

ライセンスの条件に従い、著作者表示、ライセンスへのリンク、
改変した場合の変更表示などを行うことで、商用利用・改変・再配布ができます。

プログラム部分はMITライセンスで提供します。
詳細な適用範囲と第三者素材の扱いは[NOTICE.md](NOTICE.md)を参照してください。CC BY 4.0 の正式本文は[LICENSE](LICENSE)、MIT の正式本文は[LICENSES/](LICENSES/)にあります。

利用者が新たに記入・追加した文章・写真・作品の権利は、
それぞれの権利者に帰属します。本教材のライセンスが自動的に
適用されるものではなく、個人の記録を公開する必要もありません。

第三者の著作物には、それぞれの権利表示と利用条件が適用されます。
配布元: [risan-education](https://github.com/risan-education)

変更の記録は[CHANGELOG.md](CHANGELOG.md)を参照してください。
