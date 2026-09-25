# はじめ方（保護者向け）

## 自分用の場所を作る

1. 保護者自身のGitHubアカウントでログインします。
2. 配布元で **Use this template → Create a new repository** を選びます。
3. 所有者は保護者のアカウント、名前は本名を含まないもの（例: `family-learning-notes`）にします。
4. **Private** を選びます。「Include all branches」は不要です。
5. 作成後、リポジトリ名のそばに **Private** と表示されることを確認します。

「Use this template」が表示されない場合は配布元の設定が未完了の可能性があります。公開リポジトリに実記録を書かず、設定完了まで用紙を手元に保存してください。

GitHubの利用は原則13歳以上です。小学生本人のアカウント作成や保護者のログイン情報の共有を前提にせず、保護者が自分のアカウントを操作します。
[GitHubの利用規約](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service)を確認してください。

## ブラウザーだけで1件保存する

1. 自分用リポジトリで `templates/quick-note.md` を開き、Raw表示などから本文をコピーします。
2. リポジトリのトップに戻り、**Add file → Create new file** を選びます。
3. ファイル名に `experiences/YYYY-MM-DD-theme.md` と入力します。実際の日付と短いテーマに置き換えます。
4. 本文を貼り付け、書けるところを埋めます。日付が不明なら `date-unknown-theme.md` とし、日付を推測しません。
5. プレビューで内容と個人情報を確認し、**Commit changes** で保存します。

同じ日・テーマが重なったら末尾を `-02` にします。追記は対象ファイルの編集ボタンから行えます。
コミットとは、その時点の内容を履歴として保存することです。

## 最小限で始める

最初は `experiences/` だけで十分です。探究が続いたら `projects/` に用紙をコピーし、元の体験記録へのリンクを付けます。
用紙の空欄は無理に埋めず、不要な項目は省略できます。架空例は `examples/` に分離したままにします。

記録は手元にも定期的にバックアップしてください。GitHubの **Code → Download ZIP** は現在のファイルの控えになりますが、変更履歴全体は含みません。

公式手順: [テンプレートからリポジトリを作る](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
