# コンポーネントを純粋に保つことができる

## 1. 純関数

コンポーネントを作成する際のポイントとして、コンポーネントを純粋に保つことが挙げられます。

[コンポーネントを純粋に保つ](https://ja.react.dev/learn/keeping-components-pure) を読んでください。

その上で、以下を行ってください。

- 純関数 (pure function) にはどのような特徴があるか説明してください
- 純関数でないこと（副作用を持つこと）のデメリットを説明してください
- 純関数にするためにはどのようなことに気をつければよいか説明してください

## 2. 純関数でないコンポーネントの修正

次の React コンポーネントは純関数ではありません。このコンポーネントを見て、どの部分が純関数の原則に反しているかを特定し、それを純関数のコンポーネントに修正してください。

```jsx
import React, { useState } from 'react';

let outsideCounter = 0;

export default function NonPureComponent() {
    const [counter, setCounter] = useState(0);

    function increment() {
        outsideCounter++;
        setCounter(counter + 1);
    }

    return (
        <div>
            <p>Counter: {counter}</p>
            <p>Outside Counter: {outsideCounter}</p>
            <button onClick={increment}>Increment</button>
        </div>
    );
}
```
