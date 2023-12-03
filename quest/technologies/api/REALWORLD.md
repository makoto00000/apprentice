# RealWorld

ブログプラットフォームを作る [RealWorld](https://github.com/gothinkster/realworld/tree/main) という OSS のプロジェクトがあります。RealWorld は実世界と同じ機能を持つプラットフォームを作ることで、学習したいフレームワークの技術を習得することを目的としてたプロジェクトです。

ここでは、[RealWorld の バックエンドの API](https://realworld-docs.netlify.app/docs/specs/backend-specs/introduction) の仕様を満たす Rails API を作成します。

ステップ1とステップ2に分かれます。時間に余裕がない場合はステップ1に進んでください。時間に余裕がある場合はステップ2に進んでください。ステップ1を終えてからステップ2に進む設計にはなっていないため、最初にどちらに進むかを選択してください。

ステップ1は RealWorld の API の仕様を部分的に満たした API を作成します。具体的には、認証機能のない簡易バージョンの作成になります。

ステップ2は RealWorld の API の仕様を満たす API を作成します。認証機能付きのバージョンの作成になります。

基本的にはステップ2を進めていくことを想定していますが、時間に余裕がない場合はステップ1を進めてください。

[RealWorld のドキュメント](https://realworld-docs.netlify.app/docs/intro) に目を通した上で、ステップに進んでください。

## ステップ1

RealWorld の API のうち、次のエンドポイントを実装してください。

- [Create Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#create-article)
- [Get Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#get-article)
- [Update Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#update-article)
- [Delete Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#delete-article)

なお、Article に関わる要素のうち、認証機能及び著者、お気に入り(`favorite`) は実装しなくてよいものとします。

## ステップ2

### 2-1

RealWorld の API のうち、次のエンドポイントを実装してください。

- [Registration](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#registration)

その際に、[API spec](https://github.com/gothinkster/realworld/tree/main/api) と呼ばれている [Postman のテスト(Conduit.postman_collection.json)](https://github.com/gothinkster/realworld/blob/main/api/Conduit.postman_collection.json)の該当する箇所が通るように実装してください(該当箇所以外のテストは削除するとテストしやすいです)。

### 2-2

次のエンドポイントを実装してください。

- [Authentication](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#authentication)

その際に、Postman のテストの該当する箇所が通るように実装してください。

### 2-3

次のエンドポイントを実装してください。

- [Create Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#create-article)
- [Get Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#get-article)
- [Update Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#update-article)
- [Delete Article](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints#delete-article)

その際に、Postman のテストの該当する箇所が通るように実装してください。

なお、Article に関わる要素のうち、お気に入り(`favorite`) は実装しなくてよいものとします。Postman のテストからも該当箇所のコードは削除し除外してください。

### 2-4

いずれかのエンドポイントのテストを1つ書いてください。

### 2-5 (advanced)

お気に入り(`favorite`)も実装してください。
