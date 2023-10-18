# モジュールを説明できる

## 1. モジュール

Rubyのモジュールについて

- モジュールとは何か
- クラスとの違いは何か
- モジュールを使うメリットは何か

をプログラミング初心者にわかるように説明してください。

モジュールとは
```
日本語で、「部品の集まり」「区分」という意味。
メソッドを格納するための箱のようなもの。
```

クラスとの違い
```
クラスはインスタンスが生成できる。
モジュールは生成できない。
クラスは継承ができる。
モジュールは継承できない。
ちなみに、クラスのスーパークラスはモジュールであり、モジュールのスーパークラスはオブジェクトである。
```

モジュールのメリット

1. Mix-in
   クラスでは多重継承できないが、Mix-inなら複数のモジュールをインクルードできる。
``` ruby
module M1
  def foo
    'method foo'
  end
end

module M2
  def bar
    'method bar'
  end
end

class C
  include M1
  include M2
end

puts C.new.foo
puts C.new.bar
# => method foo
# => method bar
```

2. NameSpace
クラス定義をモジュールで囲むことで、NameSpaceとして利用できる。異なるNameSpaceであれば、同名のクラスも定義できる。
``` ruby
module M1
  class Foo
    def foo
      'foo'
    end
  end
end

module M2
  class Foo
    def bar
      'bar'
    end
  end
end

puts M1::Foo.new.foo
puts M2::Foo.new.bar
# => foo
# => bar
```
