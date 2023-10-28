# テーブルを作成・修正・削除できる

作成済みのデータベースを指定して MySQL に接続してください。MySQL に接続後、使用するデータベースを指定しても大丈夫です。

```shell
$ mysql -u makoto -p
password 

mysql> use apprentice_quest 
```

## 1. テーブルの作成

任意のテーブルを作成してください。テーブルのカラムは自由に作成してください。

```mysql
mysql> CREATE TABLE `users` (
          `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID",
          `name` VARCHAR(100) NOT NULL COMMENT "ユーザー名",
          `mail_address` VARCHAR(200) NOT NULL COMMENT "メールアドレス",
          `password` VARCHAR(100) NOT NULL COMMENT "パスワード",
          `created` datetime DEFAULT NULL COMMENT "登録日",
          `modified` datetime DEFAULT NULL COMMENT "更新日"
        );
```

## 2. テーブルの表示

テーブルが作成できたことを確認するために、テーブルの一覧を表示してください。

```mysql
mysql> show tables;
```

## 3. カラムの追加

作成したテーブルに、任意のカラムを一列追加してください。

```mysql
mysql> ALTER TABLE users ADD tel int DEFAULT NULL COMMENT "電話番号" AFTER mail_address;
```
## 4. カラムの表示

カラムが追加できたことを確認するために、テーブルのカラムの一覧を表示してください。

```mysql
mysql> DESC users;
```

## 5. カラムの削除

追加したカラムを削除してください。削除後、削除できていることを確認してください。

```mysql
mysql> ALTER TABLE users DROP COLUMN tel;
```

## 6. テーブルの削除

作成したテーブルを削除してください。削除後、削除できていることを確認してください。

```mysql
mysql> DROP TABLE users;
```

## 7. テーブルの再作成

再度テーブルを作成しましょう。

今後、作成したテーブルを指定して作業します。

```mysql
mysql> CREATE TABLE `users` (
          `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID",
          `name` VARCHAR(100) NOT NULL COMMENT "ユーザー名",
          `mail_address` VARCHAR(200) NOT NULL COMMENT "メールアドレス",
          `password` VARCHAR(100) NOT NULL COMMENT "パスワード",
          `created` datetime DEFAULT NULL COMMENT "登録日",
          `modified` datetime DEFAULT NULL COMMENT "更新日"
        );
```
