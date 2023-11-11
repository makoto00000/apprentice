# DOM 操作ができる

以下、ブログの投稿フォームを作成するための HTML です。この HTML を元に、JavaScript を `dom.js` に記載し、DOM 操作を行ってください。

```html
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ブログ</title>
</head>
<body>
  <h1>ブログ</h1>
  <form id="post-form">
    <label for="title">タイトル：</label><br>
    <input type="text" id="title" name="title"><br>
    <label for="content">本文：</label><br>
    <textarea id="content" name="content"></textarea><br>
    <input type="submit" value="Submit">
  </form>
  <div id="posts"></div>
  <script src="dom.js"></script>
</body>
</html>
```

## 1. DOM とは

DOM とは何で、なんのためにあるのか、プログラミング初心者にわかるように説明してください。なお、DOM　とは API の一つなのですが、API とは何かも説明してください。

※ヒント: DOM はクライアントサイド（ブラウザ上でプログラムを実行する）に限定した話です。JavaScript の仕様そのものではないので区別して理解しましょう。HTML の操作をしたいときに JavaScript から DOM を利用するということであり、JavaScript と DOM は別物です。

## 2. 要素ノードの変更

JavaScript を使って、h1 タグのテキストを「シンプルブログ」変更してください。

## 3. イベントハンドラの設定

JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームに入力された内容（タイトルと本文）をコンソールに出力するようにしてください。

## 4. 要素ノードの追加

JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームの内容を `#posts` の div タブ内に、以下の形式で表示するようにしてください。

```html
<div id="posts">
  <h2>入力されたタイトル</h2>
  <p>入力された本文</p>
</div>
```

## 5. 要素ノードの追加

JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームの中身を空にしてください。

## 6. スタイルの変更

JavaScript を使って、`#post-form` の div タブ上にマウスポインターを乗せたタイミングで背景色を黄色に、マウスポインターを外したタイミングで白色に変更するようにしてください。

## 7. 要素ノードの削除

フォームの投稿が増え、`#posts` の div タブ内に表示される投稿が多くなってきたとします。このとき `#posts` の div タブ内に追加された投稿の数が3つを超えた場合、一番古い投稿を削除してください。なお、4で作成した投稿の表示形式は変更して構いません。
