# CSS スタイルを適用できる

自身の経験やスキルを掲載する「ポートフォリオサイト」を作成しましょう。

## 1. ページの作成

localhost:3000/ にアクセスすると、自己紹介ページが表示されるようにしてください。

自己紹介ページの HTML は以下を使用してください。改変しても構いません。

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Portfolio</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <header>
    <nav>
      <a href="#home">Home</a>
      <a href="#about">About</a>
      <a href="#work">work</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <main id="home">
    <h1>Your Name's Portfolio</h1>
    <p>キャッチメッセージを記載します</p>
  </main>

  <section id="about">
    <h2>ABOUT</h2>
    <p>あなたについて記載します</p>
  </section>

  <section id="work">
    <h2>WORK</h2>
    <div class="portfolio-item">
      <h3>Project title 1</h3>
      <p>プロジェクトについて説明します</p>
    </div>
    <div class="portfolio-item">
      <h3>Project title 2</h3>
      <p>プロジェクトについて説明します</p>
    </div>
    <div class="portfolio-item">
      <h3>Project title 3</h3>
      <p>プロジェクトについて説明します</p>
    </div>
  </section>

  <section id="contact">
    <h2>CONTACT</h2>
    <p>Email: your.email@example.com</p>
    <p>Phone: 123-456-7890</p>
  </section>

  <footer>
    <p>© 2024 My Portfolio</p>
  </footer>
</body>

</html>
```

## 2. CSS スタイルの適用

自己紹介ページに、CSS スタイルを適用してください。

CSS スタイルは以下を使用してください。改変しても構いません。

```css
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  margin: 0;
  padding: 0;
  color: #333;
}

header {
  background: #333;
  color: #fff;
  padding: 1rem 0;
  text-align: center;
}

header nav a {
  color: #fff;
  margin: 0 10px;
  text-decoration: none;
}

main,
section {
  text-align: center;
  padding: 40px 20px;
}

.portfolio-item {
  margin-bottom: 30px;
}

.portfolio-item h3 {
  margin: 0 0 10px 0;
  color: #333;
}

.portfolio-item p {
  margin: 0 0 20px 0;
}

footer {
  background: #333;
  color: #fff;
  text-align: center;
  padding: 10px 0;
}
```

## 3. Tailwind

Tailwind を使用して、自己紹介ページに CSS スタイルを適用してください。Tailwind を使用できると、CSS を記述する時間を短縮できます。

Tailwind を使用した HTML は以下を使用してください。改変しても構いません。

なお、Next.js で CSS を適用する方法は複数あります。どれを選択しても構いません。Tailwind は便利であるため、本問で紹介しています。Tailwind を使用しない場合、本問は飛ばして構いません。

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Portfolio</title>
</head>

<body class="font-sans antialiased text-gray-800">
  <header class="bg-gray-800 text-white py-4">
    <nav class="text-center">
      <a href="#home" class="mx-2 hover:text-gray-300">Home</a>
      <a href="#about" class="mx-2 hover:text-gray-300">About</a>
      <a href="#work" class="mx-2 hover:text-gray-300">Work</a>
      <a href="#contact" class="mx-2 hover:text-gray-300">Contact</a>
    </nav>
  </header>

  <main id="home" class="text-center py-20">
    <h1 class="text-4xl font-bold mb-4">Your Name's Portfolio</h1>
    <p class="text-xl mb-4">キャッチメッセージを記載します</p>
  </main>

  <section id="about" class="py-20">
    <h2 class="text-3xl font-bold mb-4 text-center">ABOUT</h2>
    <p class="text-lg text-center mx-auto max-w-xl">あなたについて記載します</p>
  </section>

  <section id="work" class="py-20 bg-gray-100">
    <h2 class="text-3xl font-bold mb-4 text-center">WORK</h2>
    <div class="max-w-4xl mx-auto">
      <div class="mb-10 text-center">
        <h3 class="text-2xl font-semibold">Project title 1</h3>
        <p class="text-lg mt-2">プロジェクトについて説明します</p>
      </div>
      <div class="mb-10 text-center">
        <h3 class="text-2xl font-semibold">Project title 2</h3>
        <p class="text-lg mt-2">プロジェクトについて説明します</p>
      </div>
      <div class="mb-10 text-center">
        <h3 class="text-2xl font-semibold">Project title 3</h3>
        <p class="text-lg mt-2">プロジェクトについて説明します</p>
      </div>
    </div>
  </section>

  <section id="contact" class="py-20">
    <h2 class="text-3xl font-bold mb-4 text-center">CONTACT</h2>
    <p class="text-lg text-center">Email: your.email@example.com</p>
    <p class="text-lg text-center">Phone: 123-456-7890</p>
  </section>

  <footer class="bg-gray-800 text-white py-4 text-center">
    <p>© 2024 My Portfolio</p>
  </footer>
</body>

</html>
```
