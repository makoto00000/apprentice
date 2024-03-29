# RealWorld のデプロイ

[RealWorld](https://github.com/gothinkster/realworld) を AWS 上にデプロイしましょう。提出は RealWorld の GitHub リポジトリの URL を記載してください。

なお、本クエストは費用がかかるため、メンターからのフィードバック終了後に構築したものは削除することを推奨します。

## ステップ1

RealWorld のバックエンドの API を AWS 上にデプロイしてください。デプロイする際には、次の要件を満たすようにしてください。

- 各エンドポイントに対してリクエストを送ると、正しいレスポンスが返ってくること
- API サーバー (EC2 もしくは ECS) とデータベースサーバー (RDS) は別々に構築すること
- データベースサーバーは、API サーバーからのみアクセスできるようにすること
- 独自ドメインでアクセスできるようにすること
- SSL 化 (HTTPS 化) すること

デプロイできたら、RealWorld の GitHub リポジトリの README にデプロイしたバックエンドの API の URL を記載してください。

なお、独自ドメインは追加取得すると費用がかかるため、今まで学習用に取得した独自ドメインがある場合は、それを使いまわすと費用が少なくすみます。

## ステップ2

構築したシステムを、インフラ構成図 (AWS のアーキテクチャ図) として draw.io などを用いて描いてください。描いたインフラ構成図は GitHub のリポジトリ の README もしくは documents ディレクトリにアップしてください。

なお、インフラ構成図を書くにあたって、以下の記事が参考になります。

[AWS のアーキテクチャ図を描きたい ! でもどうすれば良いの ?](https://aws.amazon.com/jp/builders-flash/202204/way-to-draw-architecture/?awsf.filter-name=*all)

## ステップ3(advanced)

RealWorld のフロントエンドを本番環境上にデプロイしてください。デプロイする際には、次の要件を満たすようにしてください。

- ウェブブラウザからフロントエンドの URL にアクセスすると、正しくページが表示されること
- フロントエンドからバックエンドの API にアクセスでき、サイトが正しく動作すること
- フロントエンドに独自ドメインでアクセスできるようにすること
- フロントエンドを SSL 化 (HTTPS 化) すること

デプロイできたら、RealWorld の GitHub リポジトリの README にデプロイしたフロントエンドの URL を記載してください。

なお、デプロイ先は AWS である必要はありません。

また、本ステップが完了したら、インフラ構成図に構成したシステムを追記してください。

## ステップ4 (advanced)

テストの自動化 (CI の構築) を行ってください。GitHub リポジトリにコードをプッシュすると、自動的にテストコードと静的解析が実行されるようにしてください。静的解析ツールを導入していない場合は、テストコードの実行だけで構いません。

フロントエンド・バックエンドの両方とも構築したいですが、時間がない場合は片方のみでも構いません。

また、本ステップが完了したら、インフラ構成図にテストの自動化周りを追記してください。

## ステップ5 (advanced)

デプロイの自動化 (CD の構築) を行ってください。GitHub の main ブランチ (別のブランチでも可) にプッシュされた際に、自動的にデプロイが行われるようにしましょう。

自動化を行うにあたって、API のエンドポイントのレスポンスを修正するなどして、main ブランチにマージしたらデプロイが行われることを実際に確認してください。

フロントエンド・バックエンドの両方とも構築したいですが、時間がない場合は片方のみでも構いません。

また、本ステップが完了したら、インフラ構成図にデプロイの自動化周りを追記してください。

## ステップ6 (advanced)

エラー監視ツールの導入を行ってください。その際に、異常を意図的に発生させ、エラー監視が正常に動作していることを確認してください。

フロントエンド・バックエンドの両方とも構築したいですが、時間がない場合は片方のみでも構いません。

また、本ステップが完了したら、インフラ構成図にエラー監視ツールの導入周りを追記してください。

## ステップ6(advanced)

URL 監視ツールの導入を行ってください。その際に、意図的にサービスをダウンさせ、URL 監視が正常に動作していることを確認してください。

フロントエンド・バックエンドの両方とも構築したいですが、時間がない場合は片方のみでも構いません。

また、本ステップが完了したら、インフラ構成図に URL 監視ツールの導入周りを追記してください。
