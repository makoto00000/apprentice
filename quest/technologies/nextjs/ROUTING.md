# ルーティングを設定できる

「ポートフォリオサイト」に機能を追加しましょう。

## 1. ルーティングの設定

[localhost:3000/blog](localhost:3000/blog) にアクセスしたら、ブログページを表示するように設定してください。

ブログページの HTML は以下のようになります。

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Blog - My Portfolio</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <header>
    <nav>
      <a href="index.html">Home</a>
      <a href="blog.html">Blog</a>
    </nav>
  </header>

  <main>
    <h1>Blog</h1>
    <article>
      <h2>ブログタイトル</h2>
      <p>ブログの本文を記載します</p>
    </article>
  </main>

  <footer>
    <p>© 2024 My Portfolio</p>
  </footer>
</body>

</html>
```

Tailwind を使用した場合は以下のようになります。

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Blog - My Portfolio</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="font-sans antialiased text-gray-800">
  <header class="bg-gray-800 text-white py-4 text-center">
    <nav>
      <a href="index.html" class="mx-2 hover:text-gray-300">Home</a>
      <a href="blog.html" class="mx-2 hover:text-gray-300">Blog</a>
    </nav>
  </header>

  <main class="py-20">
    <h1 class="text-4xl font-bold text-center mb-4">Blog</h1>
    <article class="max-w-4xl mx-auto">
      <h2 class="text-2xl font-semibold">ブログタイトル</h2>
      <p class="text-lg mt-2">ブログの本文を記載します</p>
    </article>
  </main>

  <footer class="bg-gray-800 text-white py-4 text-center">
    <p>© 2024 My Portfolio</p>
  </footer>
</body>

</html>
```

## 2. レイアウトの作成

トップページとブログページとでは、ヘッダーとフッターの HTML が重複しています。トップページとブログページのレイアウト (ヘッダーとフッター) を共通化してください。

## 3. リンクの作成

トップページのヘッダー (home about work contact のナビゲーション) にブログページへのリンクを追加し、リンクをクリックするとブログページに遷移するようにしてください。その際に、`<Link />` コンポーネントを使用してください。
