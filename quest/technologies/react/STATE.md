# state を管理することができる

## 1. state の追加

ボタンをクリックすると数値が増減する「押しボタンカウンターアプリ」を作成します。

以下のコードをベースにして、「増加」というボタンをクリックするとカウンターの数値が 1 増えるように、また「減少」というボタンをクリックするとカウンターの数値が 1 減るようにしてください。なお、useState を使用するようにしてください。

```jsx
export default function CounterApp() {
  return (
    <div>
      <h2>カウンターアプリ</h2>
      <h1>カウンター: 0</h1>
      <button>増加</button>
      <button>減少</button>
    </div>
  );
}
```

## 2. レンダーとコミット

React では画面が更新される際、「トリガ → レンダー → コミット」という流れで更新されます。

React の公式ドキュメントの [「レンダーとコミット」](https://ja.react.dev/learn/render-and-commit) を読み、React で画面が交信される際の流れをプログラミング初心者にもわかるように説明してください。

## 3. state はスナップショット

以下のコードは、押しボタンカウンターアプリに「+2」ボタンを追加したものです。意図としては「+2」ボタンをクリックするとカウンターの数値が 2 増えるようにしたいのですが、実際には 1 増えるだけです。なぜなのか、その理由を説明してください。

```jsx
import { useState } from 'react';

export default function CounterApp() {
  const [number, setNumber] = useState(0);

  function incrementByThree() {
    setNumber(number + 1);
    setNumber(number + 1);
  }

  return (
    <div>
      <h2>カウンターアプリ</h2>
      <h1>カウンター: {number}</h1>
      <button>増加</button>
      <button>減少</button>
      <button onClick={incrementByThree}>+2</button>
    </div>
  );
}
```

## 4. 複数回の state の更新をキューに入れる

上のバグを修正し、「+2」ボタンをクリックすると、カウンターの数値が 2 増えるようにしてください。

なお、setNumber を 2 回呼び出す形で実装してください。そのためには複数回の state の更新を一括してキューに入れる必要があります。その方法を調べて実装してください。

## 5. state 内のオブジェクトの更新

以下のコードは、「ユーザー情報アプリ」です。ボタンをクリックすると名前が「太一」に変更されるようにしたいのですが、実際には変更されません。なぜなのか、その理由を説明してください。また、正しく動作するようにコードを修正してください。

```jsx
import { useState } from 'react';

export default function UserInfoApp() {
  const [userInfo, setUserInfo] = useState({ name: '大介', age: 25 });

  function updateName() {
    // これはReactのベストプラクティスに反する更新方法
    userInfo.name = '太一';
    setUserInfo(userInfo);
  }

  return (
    <div>
      <h2>ユーザー情報アプリ</h2>
      <p>名前: {userInfo.name}</p>
      <p>年齢: {userInfo.age}</p>
      <button onClick={updateName}>名前を太一に変更</button>
    </div>
  );
}
```

## 6. state 内の配列の更新

「ユーザー情報アプリ」に趣味を追加する機能を追加しました。しかし、ボタンをクリックしても趣味が追加されません。なぜなのか、その理由を説明してください。また、正しく動作するようにコードを修正してください。

```jsx
import { useState } from 'react';

export default function UserInfoApp() {
  const [userInfo, setUserInfo] = useState({ name: '大介', age: 25 });
  const [hobbies, setHobbies] = useState(['読書', '映画鑑賞']);

  function updateName() {
    // これはReactのベストプラクティスに反する更新方法
    userInfo.name = '太一';
    setUserInfo(userInfo);
  }

  function addHobby() {
    // 不正な更新方法：配列を直接変更
    hobbies.push('新しい趣味');
    setHobbies(hobbies);
  }

  return (
    <div>
      <div>
        <h2>ユーザー情報アプリ</h2>
        <p>名前: {userInfo.name}</p>
        <p>年齢: {userInfo.age}</p>
        <button onClick={updateName}>名前を太一に変更</button>
      </div>
      <div>
        <h3>趣味</h3>
        <ul>
          {hobbies.map((hobby, index) => (
              <li key={index}>{hobby}</li>
          ))}
        </ul>
        <button onClick={addHobby}>趣味を追加（不正な方法）</button>
      </div>
    </div>
  );
}
```

## 7. state のベストプラクティス

React の公式ドキュメントの「[state の管理](https://ja.react.dev/learn/managing-state)」を読んでください。state を適切に使用する方法がまとめられています。state を適切に使用できるようになりましょう。
