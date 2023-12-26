# API を設計できる

## 1. API の設計項目

API を設計する際には多くの場合、以下の項目を考慮する必要があります。

- リクエストライン（HTTP リクエスト）
- リクエストヘッダー
- クエリパラメータ（リクエストのパラメータ）
- リクエストボディ
- レスポンス
- エラーレスポンス

そのことを念頭に置いた上で、有名な API がどのように設計されているのかを調べてみてください。

[LINE Messaging API](https://developers.line.biz/ja/reference/messaging-api/) や [Google YouTube Data API](https://developers.google.com/youtube/v3/docs?hl=ja) などが参考になります。

## 2. API の設計

TODO アプリ API の各エンドポイントに対して、API 設計をドキュメントにまとめてください。

具体的には、各エンドポイントに対して、以下の項目を記載してください。足りない項目があれば必要に応じて足してください。

- リクエストライン（HTTP リクエスト）
- リクエストボディ
- リクエストの例
- レスポンス
- レスポンスの例
- エラーレスポンス
- エラーレスポンスの例

ドキュメントにまとめる際は、1 で見た有名な API の書き方を真似してください。


# TODOアプリ APIリファレンス

## ステータスコード

下記のコードを返却します。

| ステータスコード | 説明 |
| - | - |
| 200 | リクエスト成功 |
| 204 | リクエストに成功したが返却するbodyが存在しない |
| 400 | 不正なリクエストパラメータを指定している |
| 404 | 存在しないURLにアクセス |
| 500 | 不明なエラー |

## TODO一覧を取得する

```
GET /api/todos HTTP/1.1
```

### Response

```json
HTTP/1.1 200 OK
{
    "todos": [
        {
            "id": 1,
            "title": "todo1"
        },
        {
            "id": 2,
            "title": "todo2"
        },
        {
            "id": 3,
            "title": "todo3"
        }
    ]
}

```

## TODOを作成する

```
POST /api/todos HTTP/1.1
```

### Request

| パラメータ | 型 | 必須 |
|  ---  |  ---  |  ---  |
| title | string | ◯ |

```
{
  "todo": {
    "title": "TODO content"
  }
}
```

### Response

```
HTTP/1.1 200 OK
{
    "todo": {
        "id": 1,
        "title": "TODO Content"
    }
}
```

## TODOを編集する

```
PUT /api/todos/id HTTP/1.1
```

### Request

| パラメータ | 型 | 必須 |
|  ---  |  ---  |  ---  |
| title | string | ◯ |

```
PUT /api/todos/1
{
  "todo": {
    "title": "edit TODO content"
  }
}
```

### Response

```
HTTP/1.1 200 OK
{
    "todo": {
        "id": 1,
        "title": "編集"
    }
}
```

## TODOを削除する

```
DELETE /api/todos/id HTTP/1.1
```

### Request

```
DELETE /api/todos/1
{
  "todo": {
    "title": "edit TODO content"
  }
}
```

### Response

```
HTTP/1.1 204 No Content
```