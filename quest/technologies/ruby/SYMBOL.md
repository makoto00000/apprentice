# シンボルを使うことができる

## 1. シンボル

Rubyにおけるシンボルについて

- シンボルとは何か
- 文字列と何が違うのか
- シンボルがよく使われるのはどのような用途か

をプログラミング初心者にわかるように説明してください。

## 2. 両替

引数として金額、変換元の通貨、変換先の通貨を受け取り、変換後の金額を出力する両替関数を作成します。

まず、米ドル（USD）に対するさまざまな通貨の換算率を格納した conversion_rates というハッシュを作成してください。キーに通貨名をシンボルで指定し、値には通貨の換算率を数値で格納してください。

次に、金額、変換元の通貨、変換先の通貨、返還率を受け取り、変換後の金額を出力する convert_currency 関数を作成してください。

▼インプット

```ruby
amount：整数
source_currency：シンボル
target_currency：シンボル
conversion_rates：ハッシュ
```

▼アウトプット

変換後の金額を出力してください。

▼サンプル呼び出し

```ruby
conversion_rates = {
  usd: 1.0,
  jpy: 110.0,
  eur: 0.8
}

convert_currency(100, :usd, :jpy, conversion_rates)
```

▼サンプルアウトプット

```ruby
11000
```

▼回答例

```ruby
def convert_currency(amount, source_currency, target_currency, conversion_rates)
  # 関数を完成させてください
end
```
