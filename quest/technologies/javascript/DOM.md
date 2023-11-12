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

```
Document Object Model の略。
HTML や XML のドキュメントに含まれる要素や要素に含まれるテキストのデータをオブジェクトとして扱う。
ブラウザの開発ツールなどで表示されているHTMLは、実はDOMで、これをわかりやすく表示したもの。
オブジェクトとして扱われているため、JavaScriptなどで直接操作することができる。
```

## 2. 要素ノードの変更

JavaScript を使って、h1 タグのテキストを「シンプルブログ」変更してください。

```js
const h1 = document.querySelector('h1');
h1.textContent = 'シンプルブログ';
```

## 3. イベントハンドラの設定

JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームに入力された内容（タイトルと本文）をコンソールに出力するようにしてください。

```js
const title = document.getElementById('title')
const btn = document.getElementById('submit_btn')

function buttonClick() {
  console.log(title.value)
}

btn.addEventListener('click', (event) => {
  event.preventDefault();
  buttonClick();
});
```

## 4. 要素ノードの追加

JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームの内容を `#posts` の div タブ内に、以下の形式で表示するようにしてください。

```html
<div id="posts">
  <h2>入力されたタイトル</h2>
  <p>入力された本文</p>
</div>
```

```js
const title = document.getElementById('title')
const content = document.getElementById('content')
const btn = document.getElementById('submit_btn')


function buttonClick() {
  const post_h2 = document.createElement('h2');
  const post_p = document.createElement('p');
  post_h2.textContent = title.value
  post_p.textContent = content.value
  const target = document.getElementById('posts')
  target.appendChild(post_h2);
  target.appendChild(post_p);
}

btn.addEventListener('click', (event) => {
  event.preventDefault();
  buttonClick();
});
```

## 5. 要素ノードの追加

JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームの中身を空にしてください。

```js
let title = document.getElementById('title')
let content = document.getElementById('content')
let btn = document.getElementById('submit_btn')

let data = [];

const initPost = (data) => {
  const fragment = document.createDocumentFragment();
  data.map((item) => {
    let item_h2 = document.createElement('h2');
    let item_p = document.createElement('p');
    item_h2.textContent = item.title
    item_p.textContent = item.content
    fragment.appendChild(item_h2);
    fragment.appendChild(item_p);
  });
  target = document.getElementById('posts')
  target.innerHTML = '';
  target.appendChild(fragment);
};

function buttonClick() {
  console.log(title.value)
  console.log(content.value)
  data.push({title: title.value, content: content.value})
  initPost(data);
  title.value = ""
  content.value = ""
}

btn.addEventListener('click', (event) => {
  event.preventDefault();
  buttonClick();
});
```

## 6. スタイルの変更

JavaScript を使って、`#post-form` の div タブ上にマウスポインターを乗せたタイミングで背景色を黄色に、マウスポインターを外したタイミングで白色に変更するようにしてください。

```js
let title = document.getElementById('title')
let content = document.getElementById('content')
let btn = document.getElementById('submit_btn')

let data = [];
let posts = []

function addMouseEvent(posts) {
  posts.forEach(post => {
    post.addEventListener('mouseover', () => {
      post.style.backgroundColor = "yellow";
    });
    post.addEventListener('mouseout', () => {
      post.style.backgroundColor = "white";
    });
  });
}

const initPost = (data) => {
  const fragment = document.createDocumentFragment();
  data.map((item) => {
    let item_div = document.createElement('div');
    let item_h2 = document.createElement('h2');
    let item_p = document.createElement('p');
    item_h2.textContent = item.title
    item_p.textContent = item.content
    item_div.appendChild(item_h2)
    item_div.appendChild(item_p)
    fragment.appendChild(item_div);
  });
  target = document.getElementById('posts')
  target.innerHTML = '';
  target.appendChild(fragment);
  posts = document.getElementById('posts').childNodes;
  addMouseEvent(posts);
};

function buttonClick() {
  console.log(title.value)
  console.log(content.value)
  data.push({title: title.value, content: content.value})
  initPost(data);
  title.value = ""
  content.value = ""
}

btn.addEventListener('click', (event) => {
  event.preventDefault();
  buttonClick();
});
```

## 7. 要素ノードの削除

フォームの投稿が増え、`#posts` の div タブ内に表示される投稿が多くなってきたとします。このとき `#posts` の div タブ内に追加された投稿の数が3つを超えた場合、一番古い投稿を削除してください。なお、4で作成した投稿の表示形式は変更して構いません。

ノードの削除は以下の記述で
```js
let childnode = document.getElementById('xxx');
childnode.remove();
```
```js
parentnode.removeChild(childnode)
```

今回は配列を操作する方が簡単なのでそっちで実装
```js
let title = document.getElementById('title')
let content = document.getElementById('content')
let btn = document.getElementById('submit_btn')

let data = [];
let posts = []

function addMouseEvent(posts) {
  posts.forEach(post => {
    post.addEventListener('mouseover', () => {
      post.style.backgroundColor = "yellow";
    });
    post.addEventListener('mouseout', () => {
      post.style.backgroundColor = "white";
    });
  });
}

const initPost = (data) => {
  const fragment = document.createDocumentFragment();
  if (data.length > 3) {
    data.shift()
  }
  data.map((item) => {
    let item_div = document.createElement('div');
    let item_h2 = document.createElement('h2');
    let item_p = document.createElement('p');
    item_h2.textContent = item.title
    item_p.textContent = item.content
    item_div.appendChild(item_h2)
    item_div.appendChild(item_p)
    fragment.appendChild(item_div);
  });
  target = document.getElementById('posts')
  target.innerHTML = '';
  target.appendChild(fragment);
  posts = document.getElementById('posts').childNodes;
  addMouseEvent(posts);
};

function buttonClick() {
  console.log(title.value)
  console.log(content.value)
  data.push({title: title.value, content: content.value})
  initPost(data);
  title.value = ""
  content.value = ""
}

btn.addEventListener('click', (event) => {
  event.preventDefault();
  buttonClick();
});
```