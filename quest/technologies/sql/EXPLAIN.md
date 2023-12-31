# 実行計画を確認できる

## 1. 実行計画

SQL における実行計画とは何か、実行計画を確認すると何が良いのか、SQL 初心者にわかるように説明してください。

```
「実行計画」は、SQL を実行するためにどのような手順を RDB が選択したを確認するもの。
これを確認することで、インデックスを使用したのか、テーブルをフルキャンしたのか、結合時にはどのような条件を使用したのかなどを知ることができる。
実行計画を見ることで、
・検索が遅くなりそうなクエリになっていないか
・どのテーブルに対する検索が遅くなっていそうか
・インデックスが適切に使用されているか
SQL文の頭に「EXPLAIN」をつけると、以下の情報が出力される。

```

| 列名          | JSON名        | 意味                                           |
| ------------- | ------------- | ---------------------------------------------- |
| id            | select_id     | SELECT識別子                                   |
| select_type   | なし          | SELECT 型                                      |
| table         | table_name    | 出力行のテーブル                               |
| partitions    | partitions    | 一致するパーティション                         |
| type          | access_type   | 結合型                                         |
| possible_keys | possible_keys | 選択可能なインデックス                         |
| key           | key           | 実際に選択されたインデックス                   |
| key_len       | key_length    | 選択されたキーの長さ                           |
| ref           | ref           | インデックスと比較されるカラム                 |
| row           | rows          | 調査される行の見積もり                         |
| filtered      | filtered      | テーブル条件によってフィルタ処理される行の割合 |
| Extra         | なし          | 追加情報                                       |


| TYPE 列 値 | 説明                                                                                                                                                                                                                                                                                                      |
| :--------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `system`   | テーブルに行が 1 つのみ（=system テーブル）。const の特殊ケース                                                                                                                                                                                                                                           |
| `const`    | 一致するレコードが最大 1 行。行が 1 つしかないため、オプティマイザの残りによって定数と見なされることがある。 インデックスが`PRIMARY KEY`または`UNIQUE NOT NULL`インデックスである場合に使用。1 回しか読み取られないため非常に高速。テーブルアクセスが発生するかどうかは `Extra` 列の `Using Index` を参照 |
| `eq_ref`   | 結合で使用されるインデックスが`PRIMARY KEY`または`UNIQUE NOT NULL`インデックスである場合に使用。const と似ているが、結合時に用いられる。 高速。テーブルアクセスが発生するかどうかは `Extra` 列の `Using Index` を参照                                                                                     |
| `ref`      | 結合でキーの左端のプリフィクスのみが使用される場合、またはキーが `PRIMARY KEY` や`UNIQUE NOT NULL`ではない場合に使用される。テーブルアクセスが発生するかどうかは `Extra` 列の `Using Index` を参照                                                                                                        |
| `range`    | 行を選択するためのインデックスを使用して、特定の範囲にある行のみが取得される。 出力行の`key`カラムは、使用されるインデックスを示す。B ツリーの走査を行い、一致するすべてのインデックスのエントリ を探すのにリーフノードをたどる。テーブルアクセスが発生するかどうかは `Extra` 列の `Using Index` を参照   |
| `index`    | フルインデックススキャン。インデックスの全体をインデックスの順番に沿って読む。※インデックスツリーがスキャンされることを除いて、`ALL` と同じ。 **改善の余地あり**                                                                                                                                          |
| `ALL`      | フルテーブルスキャン。全行全列を読み込む。**改善が必要**                                                                                                                                                                                                                                                  |


## 2. 実行計画の確認

次のクエリの実行計画を確認してください。

```sql
SELECT * FROM salaries WHERE salary = 70575;
```

```sql
EXPLAIN SELECT * FROM salaries WHERE salary = 70575;
```

実行結果
```
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+  
| id | select_type | table    | partitions | type | possible_keys | key  | key_len | ref  | rows    | filtered | Extra       |  
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+  
|  1 | SIMPLE      | salaries | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 2838426 |    10.00 | Using where |  
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+  
1 row in set, 1 warning (0.00 sec)  
```

## 3. 実行時間

次のクエリの、最初の行・全ての行を取得するのに実際にかかった時間(ミリ秒)を確認してください。なお、EXPLAIN ANALYZE ステートメントを利用することで確認できます。

```sql
SELECT * FROM salaries WHERE salary = 70575;
```
実行結果
```
-> Filter: (salaries.salary = 70575)  (cost=285373 rows=283843) (actual time=0.999..795 rows=56 loops=1)  
    -> Table scan on salaries  (cost=285373 rows=2.84e+6) (actual time=0.324..641 rows=2.84e+6 loops=1)
```

- `Table scan on salaries`
この部分は`salaries`テーブルをテーブルスキャンで検索したことを表す。
テーブルスキャンとは、インデックスなどを使用せずにテーブル内の全てのレコードを検索したという意味。
非常に遅い検索方法なので、クエリチューニングの必要性が出た場合は改善する有力候補になる。

- `(cost=285373 rows=2.84e+6)`
この部分は**推定実行コスト**と**戻される行の推定数**を表す。
ここはクエリ実行前の推定値なので、EXPLAINで取得できるものと同じ値になる。

- `(actual time=0.324..641 rows=2.84e+6 loops=1)`
`actual time`は最初の行・全ての行を取得するのに実際にかかった時間（ミリ秒）を表す。ここで特に重要なのは全ての行を取得するのにかかった時間の方で、実際のコストとみなすことができる。
`rows`は実際にクエリで取得した行数となる。この場合は2840000万件のレコードが取得されたことになる。
`loops`はこのステップのループ数を表す。

```
EXPLAINはクエリを実行する前の計画を取得する。
それに対してEXPLAIN ANALYZEは実際にクエリを実行して各ステップでの実行時間を測定してくれる。
```

## 4. 高速なクエリ

次のクエリの実行計画及び全ての行を取得するのに実際にかかった時間(ミリ秒)を確認してください。

```sql
SELECT * FROM salaries WHERE emp_no = 10100;
```

このクエリは3のクエリよりも実行時間が短いはずです。なぜこのクエリの方が高速なのかを説明してください。

実行結果
```sql
mysql> EXPLAIN SELECT * FROM salaries WHERE salary = 70575;                                                                  
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+
| id | select_type | table    | partitions | type | possible_keys | key  | key_len | ref  | rows    | filtered | Extra       |
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+
|  1 | SIMPLE      | salaries | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 2838426 |    10.00 | Using where |
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+
1 row in set, 1 warning (0.01 sec)

mysql> EXPLAIN SELECT * FROM salaries WHERE emp_no = 10100;
+----+-------------+----------+------------+------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table    | partitions | type | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+----------+------------+------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | salaries | NULL       | ref  | PRIMARY       | PRIMARY | 4       | const |   15 |   100.00 | NULL  |
+----+-------------+----------+------------+------+---------------+---------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)
```

```
emp_noには、PRIMARY KEYが設定されている。これもインデックスの一種で、検索する際にインデックスから検索する。  
一方、salaryカラムにはインデックスが貼られておらず、検索するには、一度全レコードを取得する必要があるため、検索に時間がかかる。
```
