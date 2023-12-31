# データベース設計の流れを説明できる

これからデータベース設計について学習していきます。

システム開発は基本の流れとして①要件定義②設計③開発/実装④テスト⑤リリース、という流れで進んでいきます。データベース設計はその中の「②設計」で行われます。

データベース設計の基本の流れは次の通りです。

①論理設計

1. エンティティの定義
2. 正規化
3. ER 図作成

②物理設計

1. テーブル定義
2. インデックス設計

※ 概念設計→論理設計→物理設計のフェーズにも分けられる。
```
概念設計（概念モデル）
管理すべき情報（エンティティと属性）とそれらの関係が整理された抽象的なモデルのこと。
「物事」「考え方」など、仕組みの本質を抽出して、単純化させた構造図を作成する。
ER図を用いて作成する。
手順
1. エンティティと属性の洗い出し
2. 関係の整理
3. 必要情報の選定
```

その前提の上で、以下を解いてください。

## 1. 論理設計

論理設計とは何か、プログラミング初心者にわかるように説明してください。

```
論理設計（論理モデル）
概念モデルをDBMSで、具体的にRDBで取り扱いやすいように詳細にしたモデル。
どのようにテーブルを作成し、各テーブルにどのような列を設けるべきかを考える。
データ、エンティティ、属性、キー、関係を視覚化するのが目的。
概念モデルと同様にER図によって表現される。
以下の3つの観点から詳細化していく。
1. 多対多の分解
2. キーの整理
3. 正規化
```

## 2. 物理設計

物理設計とは何か、プログラミング初心者にわかるように説明してください。

```
物理設計（物理モデル）
論理モデルをテーブルに落とし込むためにさらに詳細に表したモデル。DBの情報と1対1の対応をしている。
DBおよび、データ・ファイルの物理構造を視覚化することが挙げられる。
一般的に物理モデルは、「テーブル設計仕様書」「DDL（Data Definition Language）スクリプト」として表現される。
以下の3つの観点から詳細化していく。
1. 物理名の決定
2. 型・制約の決定
3. インデックスの決定
```

## 3. エンティティ

データベース設計におけるエンティティとは何か、プログラミング初心者にわかるように説明してください。

```
ER図での箱、データベースのテーブルになる、ものをエンティティと呼ぶ。
```

## 4. 正規化

正規化とは何か、プログラミング初心者にわかるように説明してください。
```
データベース設計の工程において、同一テーブル内のデータの重複をなくすために、適宜データを分割、整理すること。データの重複を排除すると、データの不整合が起きるリスクを減らすことができる。
データのどこかに変更が生じた際に、その変更がデータベース全体に及ぶような設計は避けるべき。
```

## 5. ER 図

ER 図とは何か、プログラミング初心者にわかるように説明してください。
```
Entity-Relationship Diagramの略。DBのデータとそれらの関係を表現するための記述手法。
簡単に言えば、データベースの構造を図にしたもの。
```

## 6. テーブル定義

テーブル定義とは何か、プログラミング初心者にわかるように説明してください。

```
実際のテーブル情報（属性名、NULLを許可するか、デフォルト値）などを定義していくこと。
テーブルの構造を指定し、それぞれの列がどのようデータを格納するかを定義する。
```

## 7. インデックス

インデックスとは何か、プログラミング初心者にわかるように説明してください。

```
インデックス（index）は、索引という意味がある。テーブル内のデータの検索や、ソートを高速化するために使用されるデータ構造。インデックスは特定の列（または複数の列）に対して、作成され、その列の値とそれに対応するデータの物理的な位置情報を持つ。これによち、データベースエンジンはインデックスを使用して効率的なデータの検索や結合を行うことができる。
データ量が多くなればなるほど、インデックスを指定した場合に検索/更新にかかる時間が短縮される。
```
