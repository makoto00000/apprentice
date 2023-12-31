# ブラックジャックゲーム

## ゲームの流れ
- 実行開始時、ディーラーとプレイヤー全員に２枚ずつカードが配られる
- 自分のカードの合計値が21に近づくよう、カードを追加するか、追加しないかを決める
- カードの合計値が21を超えてしまった時点で、その場で負けが確定する
- プレイヤーはカードの合計値が21を超えない限り、好きなだけカードを追加できる
- ディーラーはカードの合計値が17を超えるまでカードを追加する

## 要件
- プレイヤーは実行者、ディーラーはCPUが自動実行する。
- 実行開始時、プレイヤーとディーラーはそれぞれ、カードを2枚引く。引いたカードは画面に表示する。ただし、ディーラーの2枚目のカードは分からないようにする。
- その後、先にプレイヤーがカードを引く。プレイヤーのカードの合計値が21を超えたらプレイヤーの負け。
- プレイヤーはカードを引くたびに次のカードを引くか選択できる。
- プレイヤーがカードを引き終えたら、ディーラーは自分のカードの合計値が17以上になるまで引き続ける。
- プレイヤーとディーラーが引き終えたら勝負。カードの合計値が21により近い方が勝ち。
- ~~Aは1点として取り扱う~~ Aは11点とし、バーストする場合1点として再計算させる。
- CPUを3人まで追加し、行動は自動実行する。

## イメージ
```ruby
ブラックジャックを開始します。
あなたの引いたカードはハートの7です。
あなたの引いたカードはクラブの8です。
ディーラーの引いたカードはダイヤのQです。
ディーラーの引いた2枚目のカードはわかりません。
あなたの現在の得点は15です。カードを引きますか？（Y / N）
Y
あなたの引いたカードはスペードの５です。
あなたの現在の得点は20です。カードを引きますか？（Y / N）
N
ディーラーの引いた2枚目のカードはダイヤの2でした。
ディーラーの現在の得点は12です。
ディーラーの引いたカードはハートのKです。
あなたの得点は20です。
ディーラーの得点は22です。
あなたの勝ちです！
ブラックジャックを終了します。
```


## ファイル構成

```
blackjack
└─ README.md
└─ app.rb
└─ game
|   └─config.rb
|   └─game.rb
└─ player
|   └─player.rb
|   └─cpu_player.rb
|   └─dealer.rb
└─deck.rb
    └─card.rb
    └─deck.rb
  ```

## ゲームの実行
「blackjack/app.rb」ファイルを実行

## 勝敗判定
ブラックジャックのルールに基づき、プレイヤー対ディーラーで勝敗を決める。  


- プレイヤー、ディーラー両者バーストした場合、プレイヤーの敗北。
- それ以外はディーラーとの得点差により、勝利、引き分け、敗北となる。

## アップデート情報
<details>
<summary>バージョン1.0.0</summary>
ゲームリリース
</details>
<details>
<summary>バージョン2.0.0</summary>
CPUを最大3人まで追加できる機能を実装（プレイングについてはディーラーと同様）
</details>
<details>
<summary>バージョン3.0.0</summary>
ダブルダウン、スプリット、サレンダーのルールを追加
</details>

### 今後のアップデート予定
- CPUの難易度設定