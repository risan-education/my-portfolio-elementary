# ChatGPT Plusを契約して使う場合の初期設定

- 作成日: 2026-09-26
- 更新日: 2026-09-26

このページでは、保護者が **ChatGPT Plusに含まれるCodex** を使い、自分用のGitHubリポジトリを編集する方法を説明します。Codexは、指示を受けてファイルの変更を進めるOpenAIのサービスです。パソコンのローカル環境で編集し、GitHubのmainへ直接保存する手順です。

## 1. ChatGPT Plusを契約する

1. [ChatGPT](https://chatgpt.com/)を開き、保護者のアカウントで登録・ログインします。
2. アカウントのプラン変更画面で **Plus** を選びます。入口が見つからない場合は、[公式プラン案内のGet Plus](https://learn.chatgpt.com/docs/pricing)から進みます。
3. 表示される料金・請求周期・条件を確認し、保護者本人が支払い手続きを完了します。
4. アカウントのプラン表示がPlusになっていることを確認します。

PlusでCodexを利用できますが利用枠があります。価格・利用可能な機能・追加購入の条件は公式ページと契約画面で確認してください。この手順ではAPIキーの作成を求めません。[公式のプラン説明](https://learn.chatgpt.com/docs/pricing)

## 2. 自分用のPrivateリポジトリを作る

[はじめ方](getting-started.md)に従い、例えば `family-learning-notes` をPrivateで作ります。配布元 `risan-education/my-portfolio-elementary` への接続を、本人の記録の保存先にしないでください。

## 3. 自分用ノートをパソコンに用意する

mainへ直接pushするため、ここでは**デスクトップのCodexのLocal（ローカル）環境**を使います。ブラウザーのクラウド環境とは準備方法が異なります。

1. [GitHub Desktop](https://desktop.github.com/)をインストールし、ノートを所有するGitHubアカウントでログインします。
2. **File → Clone repository** から自分用の `family-learning-notes` を選び、パソコンへの保存先を指定して **Clone** します。cloneは履歴ごとコピーする操作です。
3. **Current Branch** が `main` になっていることを確認します。配布元ではなく、自分用のPrivateリポジトリを選びます。
4. Codexを利用できるデスクトップアプリを用意し、**Plusを契約したChatGPTアカウント**でログインします。[公式のローカル環境ガイド](https://learn.chatgpt.com/docs/environments/local-environment)を参照してください。
5. Codexのプロジェクト追加で、手順2の保存フォルダを開きます。作業場所は **Local** を選びます。アプリでChatGPT／Codexを切り替える画面がある場合は **Codex** を選びます。

GitHub DesktopのログインとCodexのChatGPTログインは別です。Codexからpushする際にGitHubの認証を求められた場合は、ノートを所有するアカウントで認証します。アプリや接続方法によって認証は別途必要です。

公式手順: [GitHub Desktopでコピーする](https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop)・[CodexのLocal環境](https://learn.chatgpt.com/docs/environments/modes)・[ローカルプロジェクトを開く](https://learn.chatgpt.com/docs/projects)

## 4. 最初の編集を依頼する

自分用ノートのプロジェクトを開き、まず次のように依頼します。

> このリポジトリのAGENTS.mdを読んでください。保存先が私のPrivateリポジトリで、現在のブランチがmainであることを確認してください。未保存の変更を消さず、作業前にリモートの最新状態を確認してください。作成日・更新日と本人の発言の扱いを説明してください。まだ記録は追加しないでください。

続いて[AIガイドの依頼例](ai-guide.md)で原メモを渡します。ファイルの変更内容が出ているか確認します。通常のチャットで文章案が返っただけでは、ファイルへの保存は完了していません。
Codexは [AGENTS.mdを指示として参照](https://learn.chatgpt.com/docs/agent-configuration/agents-md)します。

## 5. 内容を確認し、mainに直接保存する

**mainはノートの本体、commitは変更を履歴に残す操作、pushはGitHubへ送る操作**です。プルリクエストの作成・マージ操作は使いません。

1. Codexが変更した内容を開き、本人の言葉・原メモ・作成日・更新日を確認します。
2. 内容がよければ、次のように依頼します。

> 内容を確認しました。今回の変更をコミットして、私のリポジトリのorigin/mainへ直接pushしてください。新しいブランチやpull requestは作らないでください。関係のない変更は含めず、強制pushはしないでください。完了したら保存先とコミットを教えてください。

3. GitHubで自分用リポジトリを開き直し、`main` のファイルに反映されていることを確認します。

アプリのGit操作で **Commit → Push** を選ぶ方法でも保存できます。pushの認証が完了できない場合は、同じフォルダをGitHub Desktopで開き、コミット済みなら **Push origin**、未コミットなら変更を確認して **Commit to main → Push origin** と進めます。

次回もmainを使い、編集前に最新状態を取得します。サーバー側に新しい変更がある・競合がある場合は、強制上書きせずAIに状況を説明してもらいます。

## 困ったとき

- ファイルが見えない: cloneしたフォルダをCodexのプロジェクトとして開いているか確認します。
- 保存先が違う: AIに「originのURLと現在のブランチを見せて」と頼み、自分用リポジトリのmainか確認します。
- 認証を求められる: 自分用リポジトリに書き込めるGitHubアカウントで認証します。
- mainへのpushが保護設定で拒否される: AIは設定を勝手に解除せず、理由を説明します。管理者に運用を確認してください。
- クラウド環境でPR作成しか選べない: このページのLocal環境で自分用フォルダを開いて作業します。
- 日付が入らない: [日付のルール](file-dates.md)を明示して再編集を頼みます。

確認日: 2026-09-26。画面の名称は環境によって異なります。保護者が操作し、不要な個人情報を送らず、サービスのデータ利用設定を確認してから実記録を扱います。
