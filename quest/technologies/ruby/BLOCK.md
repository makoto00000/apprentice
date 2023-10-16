# ブロックを使った配列の処理ができる

## 1. each

従業員の名前がID順に配列で渡されるので、IDと従業員の名前をセットにして出力する print_names 関数を定義してください。なお、each メソッドと with_index メソッドを使うようにしてください。

▼インプット

```ruby
[name1, name2, name3, ...]：配列

name：文字列
```

▼アウトプット

IDと従業員の名前をセットにして順に出力してください。

▼サンプル呼び出し

```ruby
print_names(['上田', '田仲', '堀田'])
```

▼サンプルアウトプット

```ruby
1. 上田
2. 田仲
3. 堀田
```

▼回答例

```ruby
def print_names(names)
  # 関数を完成させてください
end
```

## 2. map

与えられた整数の配列の要素を2乗した配列を返す square 関数を定義してください。なお、map メソッドを使うようにしてください。

▼インプット

```ruby
[i1, i2, i3, ...]：配列

i：整数
```

▼アウトプット

整数を2乗した配列。

▼サンプル呼び出し

```ruby
squared_numbers = square([5, 7, 10])
print squared_numbers
```

▼サンプルアウトプット

```ruby
[25, 49, 100]
```

▼回答例

```ruby
def square(numbers)
  # 関数を完成させてください
end
```

## 3. select

整数の配列から偶数を抽出した配列を返す関数 select_even_numbers を作成してください。なお、select メソッドを使うようにしてください。

▼インプット

```ruby
[i1, i2, i3, ...]：配列

i：整数
```

▼アウトプット

偶数を抽出した配列。

▼サンプル呼び出し

```ruby
even_numbers = select_even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print even_numbers
```

▼サンプルアウトプット

```ruby
[2, 4, 6, 8, 10]
```

▼回答例

```ruby
def select_even_numbers(numbers)
  # 関数を完成させてください
end
```
