# 例外処理を使うことができる

## 1. 例外

例外について

- 例外とは何か
- 何のためにあるのか

をプログラミング初心者にわかるように説明してください。

例外とは
```
正常に動作するプログラムでも、そのプログラムが想定していないデータを処理する場合、エラーが発生する。そのエラーの状況によってはプログラムの実行を継続できず、異常終了により途中で処理を中断する。
プログラムで処理するデータの仕様は設計時に決めらており、プログラムはそれに従って作られる。そのような設計時に決めておいたデータ以外のデータ、つまり例外が入力されたケースを想定して作られたプログラムが例外処理。
```

何のためにあるのか
```
例外処理を書いておかないと、例外が発生した時点でプログラムが停止してしまい、それ以降に記述してあるコードが読み込まれない。
そうなると、もし処理に必要なコードが例外発生より後に書いてあった場合にはプログラムが破綻してしまう。
よって、例外が発生した時にどういう処理をするのかを設定する必要がある。
```

## 2. 電卓

例外処理の付いた電卓プログラムを作成してください。このプログラムでは、2つの数値と演算子（+、-、*、/）を引数として受け取り、演算を実行して結果を出力します。ゼロで割ったり、無効な演算子を入力したりといった潜在的なエラーを処理するために、例外処理を追加します。

- num1、num2、operatorの3つのパラメータを受け取るcalculateという関数を作成する。この関数は、対応する演算を実行し、結果を返す必要があります。

▼インプット

```ruby
num1：整数
num2：整数
operator：文字列
```

▼アウトプット

num2 が 0 で割り算が実行されたときには ZeroDivisionError が発生し、"ゼロによる割り算は許可されていません" と出力してください。
num1、num2 が整数以外の場合は "num1、 num2 には整数を入力してください" と出力してください。
operator が +、-、*、/ の場合は、"演算子には  +、-、*、/ のいずれかを使用してください" と出力してください。
それ以外の演算を実行し、結果を出力してください。

▼サンプル呼び出し

```ruby
calculate(1, 0, '/')
calculate(1.5, 2, '+')
calculate(1.5, 2, '**')
calculate(5, 2, '*')
```

▼サンプルアウトプット

```ruby
ゼロによる割り算は許可されていません
num1、 num2 には整数を入力してください
演算子には  +、-、*、/ のいずれかを使用してください
10
```

▼回答例

```ruby
# 勝手にカスタム例外を追加してみました↓↓
class NoOperatorError < StandardError
  def initialize(message="演算子には  +、-、*、/ のいずれかを使用してください")
    super(message)
  end
end

class NoIntegerError < StandardError
  def initialize(message="num1、 num2 には整数を入力してください")
    super(message)
  end
end

def calculate(num1, num2, operator)
  # クラスを完成させてください
  if !num1.integer? || !num2.integer?
    raise NoIntegerError
  end
  if operator == "+"
    puts num1 + num2

  elsif operator == "-"
    puts num1 - num2
  
  elsif operator == "*"
    puts num1 * num2
    
  elsif operator == "/"
    puts num1 / num2
  else
    raise NoOperatorError
  end
end

puts "1番目の整数を入力してください:"
num1 = gets.chomp.to_f # ←float型にすると整数エラーが必ず発生するのでは？

puts "2番目の整数を入力してください:"
num2 = gets.chomp.to_f # ←同じく

# [疑問] 加えて、getsで値を受け取る場合、型変換しないとString型となる。to_iでInteger型に変換するのが普通だと思うが、その場合例外の記述が不要なのでは？

puts "演算子(+, -, *, /)を入力してください:"
operator = gets.chomp

# 上記の呼び出し方ではすべて例外になる。サンプル呼び出しでは出力は想定どおり。

begin
  result = calculate(num1, num2, operator)
  puts result
# 例外処理を記載してください
rescue ZeroDivisionError
  puts 'ゼロによる割り算は許可されていません'

rescue NoIntegerError => e
  puts e.message

rescue NoOperatorError => e
  puts e.message

end
```
