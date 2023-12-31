# CORS の設定ができる

## 1. CORS とは

API を利用する際に、CORS という概念が出てきます。CORS とは何か、何のために CORS という仕組みがあるのか、プログラミング初心者にもわかるように説明してください。

→
Cross-Origin Resource Sharing の略、日本語訳すると「オリジン間リソース共有」。
オリジンとは、プロトコル + ドメイン + ポート番号を指す。（例、https://yahoo.co.jp:443）
基本的に同一のオリジンでなければ、リソースの共有ができない。異なるオリジンをすべて許してしまうと、
XSS (Cross Site Scripting)、CSRF (Cross-Site Request Forgeries)の脆弱性を生み出してしまう。

- XSS:悪意のあるサイト（異なるオリジン）にアクセスさせ、クッキー情報を抜き取る
- CSRF:ログイン中のユーザーに不正なリンク（異なるオリジン）を踏ませるなどして、不正なリクエストを実行させる

APIサーバーなど、異なるオリジンへのアクセスを行いたい場合もあるため、その場合は事前にアクセスを許可するオリジンを設定しておく必要がある。

## 2. CORS 許可

TODO アプリ API において、CORS を許可してください。

今回は HTTP ヘッダーにて、以下を許可します。

- オリジン：全てのサイトを許可する
- リソース：全てのファイルを許可する
- ヘッダー：全てのヘッダーを許可する
- メソッド：`GET`,`POST`,`PUT`,`DELETE` のみ許可する

なお、CORS の設定は一から記載することもできますが、ライブラリを使うと簡単に設定できることが多いです。
