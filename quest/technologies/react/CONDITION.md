# 条件付きでレンダーできる

## 1. 条件付きレンダー

TODO のリストをレンダーしてください。完了したアイテムの横にチェックマーク（✓）を表示します。

以下のコンポーネントを完成させてください。

```jsx
export default function TodoList() {
  const todos = [
    { text: "Reactのドキュメントを読む" , completed: false },
    { text: "Reactの練習問題を解く", completed: true },
    // 他のTODOアイテム
  ];

  return (
    <div>
      <ul>
        {/* TODO のテキストを map を使用してレンダーしてください。完了したアイテムの横には ✓ を表示してください */}
      </ul>
    </div>
  );
}
```
