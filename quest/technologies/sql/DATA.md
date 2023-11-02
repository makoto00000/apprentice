# データを登録・検索・更新・削除できる

## 1. データの登録

作成済みのテーブルに対して、任意のデータを一行分追加してください。

```sql
mysql> INSERT INTO users (name, mail_adress, password, created, modified)
        VALUES ("makoto", "test@mail.com", "123456", now(), now())
```

## 2. データの検索

データを追加したテーブルに対して、すべてのデータを検索して出力してください。

```sql
mysql> SELECT * FROM users;
```

## 3. データの更新

追加済みのデータのある行の値を別の値に更新してください。

```sql
mysql> UPDATE users SET name="makoto01", mail_address="test01@mail.com" WHERE id = 1;
```

## 4. データの削除

テーブル内の全データを削除してください。
```sql
mysql> DELETE FROM users;
