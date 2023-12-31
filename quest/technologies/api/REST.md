# REST について説明できる

## 1. REST とは

API の設計で用いられる有名な設計思想に REST があります。REST には4つの原則があり、その原則を満たした設計の API を REST API と呼びます。

REST 及び REST の4つの原則について、プログラミング初心者にわかるように説明してください。

なお、今後 API を設計する際は、REST の4つの原則を意識して設計するようにしてください。

→
「REpresentational State Transfer」
（リプレゼンテーショナル・ステイト・トランスファー）の略

RESTの4原則は、
HTTPを設計した中心人物であるRoy Fielding氏が2000年に提唱したもので、
①統一インターフェース
②アドレス可能性
③接続性
④ステートレス性
の４つ。

①統一インターフェース
  あらかじめ定義・共有された方法でやり取りすること。
  HTTPメソッドを使って、JSON形式でデータをやり取りするなど。

②アドレス可能性
  すべての情報が一意なURI（Uniformed Resource Identifier）（識別子）を持っていて、提供する情報をURIで表現できること。Webの場合、URLを指す。

③接続性
  やり取りされる情報にはハイパーリンクを含めることができる。一つのリンクから別の情報にリンク（接続）することができて、RESTfulなシステム同士なら円滑に情報連携を行うことができる。
  一つのwebページにいろいろなリンクが貼られており、そのリンクを辿ってまた別のページを取得できる。

④ステートレス性
  状態がない、つまりやりとりが１回ごとに完結するということ。
  前のやり取りの結果に影響を受けないので、シンプルな設計にできる。

