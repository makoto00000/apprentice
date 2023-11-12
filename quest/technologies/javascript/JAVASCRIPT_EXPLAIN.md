# JavaScript について説明できる

## 1. JavaScript とは

JavaScript とは何か、HTML/CSS とはどのような関係にあるのか、プログラミング初心者にわかるように説明してください。

```
動的にコンテンツを更新したり、マルチメディアを管理したり、その他多くのことができるスクリプト言語。
```

## 2. ECMAScript とは

ECMAScript とは何か、プログラミング初心者にわかるように説明してください。

なお、学習する際には ECMAScript 2015（ES2015）以降のバージョンを学習してください。

```
JavaScriptは、Netscape Communications 社によって開発されたプログラミング言語。同社が開発していたブラウザ Netscape Navigator で動作した。その後、マクロソフト社が開発しているブラウザ Internet Explorer でも動作するようになるが、各社が独自の機能拡張を行っていたため互換性に問題があった。そこで、標準化が行われるようになった。

JavaScript の標準化が行われ基本となる仕様が ECMAScript という名前で定められた。 ECMAScript は定期的に改定が行われている。 ECMAScript はあくまで基本部分の仕様であり、 ECMAScript で定められ基本仕様に基づいて各社が実装を行ったものが JavaScript となる。 JavaScript では基本機能以外のブラウザ関係の機能などが加えられている。
```

## 3. 環境構築

JavaScript のコードを実行できるように環境を構築してください。

JavaScript の実行方法はいくつかあります。

1. ブラウザの開発者ツールのコンソールで実行する
2. ファイルを作成し、ブラウザで開く
3. Node.js をインストールし、コマンドラインで実行する

そのうち、本学習においては2を推奨します。1はちょっとした処理を実行するには便利ですが、書いたコードが手元に残らないため、復習しづらくなります。3は、Node.js のインストールが必要になるため、環境構築が面倒になります。2が一番手軽で、コードも手元に残り復習しやすいです。

以下、2の方法で環境構築を行います。

まず、任意のディレクトリに `hello.html` というファイルを作成してください。ファイル名は何でも構いません。学習トピックごとにファイルをわけ、トピックに関する名前をつけると復習しやすくなります。

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JavaScript学習</title>
</head>

<body>
  <script src="hello.js"></script>
</body>

</html>
```

次に、`hello.js` というファイルを作成してください。ファイル名は何でも構いません。

```js
console.log('Hello World');
```

最後に、`hello.html` をブラウザで開いてください。ブラウザの開発者ツールのコンソールに `Hello World` と表示されれば成功です。

なお、Visual Studio Code を使用されている場合は、[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) という拡張機能をインストールすると、ファイルを保存すると自動的にブラウザが更新されるため、便利です。

[ディレクトリ](quest/JAVASCRIPT_EXPLAIN/hello.html)