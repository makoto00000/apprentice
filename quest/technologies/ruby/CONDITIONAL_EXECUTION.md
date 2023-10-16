# 条件分岐を使うことができる

## 1. 比較

2つの整数 x, y の大小を比較し、xとyの大小関係を出力する関数 greater を定義してください。

▼インプット

```ruby
x：整数
y：整数

-100 <= x, y <= 100
```

▼アウトプット

xよりyが大きければ「x > y」
xよりyが小さければ「x < y」
xとyの値が同じなら「x == y」

▼サンプル呼び出し

```ruby
greater(5, 4)
greater(-50, -40)
greater(10, 10)
```

▼サンプルアウトプット

```ruby
x > y
x < y
x == y
```

▼回答例

```ruby
def greater(x, y)
  # 関数を完成させてください
end
```

## 2. 電車の料金

東京駅から新宿駅までJR山手線に乗って移動します。12歳以上は大人料金で200円、6歳以上12歳未満はこども料金で100円、6歳未満は幼児で無料となります。年齢に応じて東京駅から新宿駅までの料金を出力する関数 train_fare を定義してください。

▼インプット

```ruby
年齢 age が整数で与えられます。

0 <= age <= 150
```

▼アウトプット

電車賃を出力してください。

▼サンプル呼び出し

```ruby
train_fare(12)
train_fare(6)
train_fare(5)
```

▼サンプルアウトプット

```ruby
200
100
0
```

▼回答例

```ruby
def train_fare(age)
  # 関数を完成させてください
end
```

## 3. XOR

2つのブーリアン値 x と y が与えられ、x と y のうちどちらかが真なら true を出力し、両方真もしくは両方偽なら false を出力する関数 xor を定義してください。

▼インプット

```ruby
x：ブーリアン値
y：ブーリアン値
```

▼アウトプット

trueもしくはfalseを出力してください。

▼サンプル呼び出し

```ruby
xor(true, true)
xor(true, false)
xor(false, true)
xor(false, false)
```

▼サンプルアウトプット

```ruby
false
true
true
false
```

▼回答例

```ruby
def xor(x, y)
  # 関数を完成させてください
end
```
