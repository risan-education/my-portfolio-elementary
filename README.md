# わたしの「なんで？」ノート

- 作成日: 2026-09-25
- 更新日: 2026-09-26
## 小学生の My ポートフォリオ

「なんでだろう」「やってみたい」「うまくいかなかった」を、少しずつ残す場所です。
絵でも、一言でも、おとなに話した言葉でも大丈夫。毎日書く必要はありません。

**子どもは体験とことばの主役。GitHubへの保存とAIの操作は保護者が担当します。**
入試の実績づくりを急がず、そのときの興味を大切にします。

**家庭で試せる公開テンプレート（0.2.0）です。** 用紙は無料です。AIサービスの費用は別で、接続・編集機能は環境によって異なります。[確認状況](docs/connection-check.md)を読み、最初は架空の記録で練習してください。文章はGitHub、写真・動画の原本は保護者の外部ストレージに保管できます。

### まず1件、残してみよう

1. [はじめ方（保護者向け）](docs/getting-started.md)を開き、ChatGPTへの登録・Plus契約・アプリのインストールを進めます。
2. 保護者用のGitHubアカウントを作り、ChatGPTに聞きながら接続の設定とテンプレートの **Private（非公開）** での複製を進めます。
3. AIに「やったこと」「子どものことば」を伝え、用紙に沿ってファイルを作るよう頼みます。作成日・更新日もAIが記入します。
4. 内容を子どもと見直し、GitHubに反映します。続きが気になったら、AIと相談して[探究ノート](templates/inquiry.md)へ進みます。

### 子どもといっしょに

> なにを見つけた？
>
> どこがふしぎだった？
>
> つぎは、なにをためしてみたい？

答えが出なくても、途中でやめても大丈夫。「わからない」も大切な記録です。

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

### この記録は、あとで何に使える？

小学生のうちは残すだけで十分です。ためた記録は、中学・高校の探究学習の出発点、大学入試（総合型・学校推薦型）の活動報告書や面接の材料、大学生の就職活動での自己分析、社会人になってからAIに自分の背景を伝えるコンテキストとして、原記録を変えずに使えます。詳しくは[将来の使いみち](docs/future-use.md)を参照してください。

入試や就職の結果を保証する教材ではありません。大学での経験を小学生の記録で代替せず、本人が用途と利用範囲を選びます。

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
- [将来の使いみち: 探究・入試・就活・AIのコンテキスト](docs/future-use.md)
- [作成日・更新日のルール](docs/file-dates.md)
- [中学生になったら（引き継ぎと本人への移譲）](docs/migration.md)
- [架空の記入例](examples/README.md)
- [記録を使う範囲・利用停止・削除](docs/record-choices.md)
- [バックアップと復元](docs/backup-and-restore.md)
- [テンプレートの更新](docs/template-updates.md)
- 補足: [Copilotの初期設定](docs/copilot-setup.md) / [中学生とCopilotの無料利用](docs/copilot-students.md) / [Claude Code（自分で設定できる方向け）](docs/claude-code.md)

この公開リポジトリは空の用紙と架空例の配布用です。**実際の子どもの記録を、このリポジトリのIssue・PRに投稿しないでください。**
ChatGPTでの作成・編集を基本に案内します。CopilotやClaude Codeを希望する方向けの補足もあります。手動編集の手順も補足として残しています。自動公開・自動送信の仕組みは含みません。

### 必要になったときの用紙

- [今の自分をAIに伝える](templates/ai-context.md)
- [提出条件を確認する](templates/submission-check.md)
- [記録を使う範囲を見直す](templates/record-use-review.md)

管理者向け: [公開前レビュー](docs/reviews/260926-publication-review.md) / [記事への掲載案](docs/publication-guide.md) / [変更履歴](CHANGELOG.md)

### ライセンス

テンプレートと架空例は [MIT License](LICENSE) で配布します。
利用者が追加する本人の文章・写真・作品に、このライセンスが自動的に適用されるわけではありません。
提供: [risan-education](https://github.com/risan-education)
