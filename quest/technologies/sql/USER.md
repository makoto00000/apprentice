# ユーザーを作成・権限付与・削除できる

Root権限を持つユーザーで MySQL へ接続してください。

```shell
$ mysql -u root
```

## 1. ユーザーの作成

MySQL のユーザーを作成してください。名前とパスワードは任意、ホストは localhost を指定してください。

```mysql
mysql> create user `testuser`@`localhost` IDENTIFIED BY `password`;

```

## 2. ユーザーの表示

ユーザーを作成できたことを確認するために、ユーザーの一覧を表示してください。

```mysql
mysql> SELECT Host, User FROM mysql.user; 
```
+-----------+------------------+  
| Host　　　| User　　　　　　|  
+-----------+------------------+  
| localhost　| root　　　　　　|  
| localhost　| testuser　　　　|  
+-----------+------------------+  

## 3. ユーザーへの権限付与

作成したユーザーに、MySQL 内のすべてのデータベースとテーブルへの root のフルアクセス権を付与してください。

なお、ユーザーへの権限付与を学習するために本問題を用意していますが、現場ですべてのデータベースへの root のフルアクセス権限を付与することはほぼありません。データベースのセキュリティを危険にさらす可能性があるためです。

```mysql
現在の権限を確認
mysql> show grants for testuser@localhost;

=> GRANT USAGE ON *.* TO `testuser`@`localhost`
USAGE ... 「何も権限がない」の意味
```

```mysql
指定のDBに対してすべての権限を付与
mysql> grant all on apprentice_quest.* to testuser@localhost;
```


## 4. 権限のリロード

ユーザーに権限を付与したら、すべての権限をリロードしてください。これにより設定が有効になります。

```mysql
mysql> FLUSH PRIVILEGES;
```
※ 常に必要なわけではない。

## 5. ユーザーの削除

作成したユーザーを削除してください。削除後、削除できていることを確認してください。

```mysql
mysql> drop user testuesr@localhost;
```


## 6. ユーザーの再作成

再度ユーザーを作成、権限付与、権限のリロードを行ってください。

今後は root ユーザーは基本的に使用せず、今回作成したユーザーを使用してください。

```mysql
mysql> 
```