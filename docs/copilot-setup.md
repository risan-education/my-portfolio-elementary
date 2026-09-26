# GitHub Copilotの初期設定（無料・学生・有料）

- 作成日: 2026-09-26
- 更新日: 2026-09-26

ここでいうCopilotは **GitHub Copilot** です。保護者が自分のGitHub Copilotプランを使い、パソコンの **Visual Studio Code（VS Code）** でノートを編集する方法を説明します。Microsoft Copilotの契約とは別です。

先に[はじめ方](getting-started.md)で自分用のPrivateリポジトリを作ってください。以下の `family-learning-notes` は保存場所の名前の例です。

## 1. 利用するプランを選ぶ

まず試す場合はCopilot Freeを利用できます。無料枠には制限があります。13歳以上の学生本人が使う場合は[学生向け無料プランの条件](copilot-students.md)を確認してください。FreeやStudentを使う場合は有料契約をせず、「2」へ進みます。

有料プランを選ぶ場合は、以下の手順で契約します。

1. ノートを所有している保護者のGitHubアカウントでログインします。
2. [Copilotのプラン一覧](https://github.com/features/copilot/plans)を開き、希望する個人向けプラン（例: Copilot Pro）の **Get started** から進みます。
3. 料金・請求周期・含まれる利用枠・追加利用の設定を確認します。追加料金を使いたくない場合は、追加利用を有効にしない設定を選びます。
4. 請求情報・支払い情報を本人が入力し、プラン内容を確認して有効化します。
5. GitHubのCopilot設定や **Billing & licensing** で契約が反映されたことを確認します。

料金と利用枠は変更されるため、契約画面の表示を優先します。[公式の契約手順](https://docs.github.com/en/copilot/how-tos/manage-your-account/get-started-with-a-copilot-plan)

## 2. VS Codeを用意してGitHubにログインする

1. [VS Code公式サイト](https://code.visualstudio.com/)から、自分のパソコン用のアプリをインストールします。
2. ローカルでGitHubと同期するため、[Git公式サイト](https://git-scm.com/downloads)からGitをインストールします。すでに使える場合は不要です。インストール後はVS Codeを開き直します。
3. VS CodeのCopilotアイコンから **Use AI Features** やサインインの案内を選びます。
4. **利用するプランが有効なGitHubアカウント**でログインします。ブラウザーで確認が出たら、アカウントと接続先を確認して進みます。

公式手順: [VS CodeでCopilotを設定する](https://code.visualstudio.com/docs/setup/copilot)

## 3. 自分用のノートをパソコンに取り込む

1. GitHubで自分用のPrivateリポジトリを開き、**Code → HTTPS** のURLをコピーします。
2. VS Codeで **Ctrl+Shift+P**（Macは **Command+Shift+P**）を押し、`Git: Clone` を選びます。cloneは「GitHubの保存場所を履歴ごとパソコンに取り込む」操作です。
3. URLを貼り付け、パソコン内の保存先を選び、完了したら **Open** でフォルダを開きます。
4. 左側に `AGENTS.md`、`.github/copilot-instructions.md`、`templates` が見えることを確認します。

取得元は配布元ではなく自分用のリポジトリです。GitHubのログインを求められたら、そのリポジトリを所有するアカウントを選びます。
[VS CodeのGit操作ガイド](https://code.visualstudio.com/docs/sourcecontrol/quickstart)

## 4. 指示書を読ませ、編集する

Copilotのチャットを開き、ファイルを編集できる **Agent** を選びます。指示書は用意済みなので、新規生成で上書きする必要はありません。まず次のように依頼します。

> AGENTS.mdと.github/copilot-instructions.mdを読んでください。まだ編集せず、作成日・更新日、本人の発言、未確認事項をどう扱うか短く説明してください。

確認できたら、[AIの依頼例](ai-guide.md)を使って実際のメモを渡します。日時は実際の値に置き換え、学校名など不要な情報は省きます。通常の質問だけではファイルが変わらない場合があるので、保存先と編集するファイルを明示します。

公式資料: [Agentで編集する](https://code.visualstudio.com/docs/copilot/chat/chat-agent-mode)・[指示書の仕組み](https://code.visualstudio.com/docs/agent-customization/custom-instructions)

## 5. 変更を見てmainへ直接保存する

1. 現在のブランチがmainであることを確認し、ファイルに作成日・更新日が入り、メモにない発言が追加されていないか確認します。
2. **Source Control（ソース管理）**で変更内容を開きます。
3. 保存したいファイルをステージし、例えば `運動会の記録を追加` と説明を書いて **Commit** します。Gitの名前・メール設定を求められた場合は、表示される案内で設定します。
4. **Sync Changes** または **Push** でorigin/mainへ直接送ります。新しいブランチやプルリクエストは作りません。競合が出たら、強制上書きせず内容を確認します。
5. GitHubの自分用リポジトリを開き直し、ファイルと日付が反映されているか確認します。

VS Codeで編集・保存しただけでは、GitHub側への反映は完了しません。次回は作業前に **Pull** などで最新の記録を取り込んでから編集します。

## 困ったとき

- 契約が表示されない: VS CodeとGitHubで同じアカウントを選んでいるか確認します。
- 日付が入らない: [日付のルール](file-dates.md)と指示書をチャットに添付して再確認を依頼します。
- 自分用リポジトリが古い: テンプレートの更新は既存のコピーに自動反映されません。[AIガイドの更新案内](ai-guide.md)に従って指示書を追加します。

確認日: 2026-09-26。画面の名称はバージョンによって変わります。個人情報の入力前に、Copilotのデータ利用・プライバシー設定も確認してください。

操作をAIに頼む場合は、内容確認後に「今回の変更をコミットしてorigin/mainへ直接pushしてください。新しいブランチやpull requestは作らず、強制pushもしないでください」と伝えます。
