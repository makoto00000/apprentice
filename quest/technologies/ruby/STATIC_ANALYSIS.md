# 静的解析ツールを使うことができる

## 1. コーディング規約

コーディング規約とは、エンジニアが複数人で同一のタスクやプロジェクトを行う際にソースコードについて定めたルールのことです。プログラムがどのように作られるべきかを示し、品質を保つために作成されます。各言語ごとに有名なコーディング規約が存在しています。

Ruby のコーディング規約について調べ、どのようなルールが一般的に規定されているか、目を通してみてください。


[Rubyコーディング規約](https://shugo.net/ruby-codeconv/codeconv.html)

[cockpadコーディング規約](https://github.com/cookpad/styleguide/blob/master/ruby.ja.md)

## 2. 静的解析ツール

静的解析ツールとは、ソフトウェアを動かさずにテストを実行するツールです。コーディング規約の通りにコードが書けているかや、脆弱性になりうるバグがないかをチェックします。

Ruby における有名な静的解析ツールは Rubocop です。

Rubocop をインストールし、今まで書いたコード1つ選び(コード量が多いほどチェックに引っかかりやすくなります)を Rubocop でチェックし、修正点があれば全てのチェックが通るまで修正してください。

また、今後コードを書く際は、Rubocop のチェックが全て通るまでコードを常に修正するようにしてください。そのことで可読性の高いコードを書くことができるようになります。

```
vending machineに対してrubocopでチェック。
.class → .instance_ofに変換
クラスを定義したファイル名はキャメルケースからスネークケースに変換
クラスを継承した場合、
  def initialize(name, price)
    super(name, price)
  end
  の記述が不要
クラスメソッド内のif文がreturn unless ~ に変更。
```

``` ruby
  def press_button(item)
    if @deposit_coin >= item.price
      if (item.class == CupItem && @cup != 0) || item.class != CupItem
        if item.class == CupItem
          @cup -= 1
        end
        @deposit_coin -= item.price
        print item.name
      end
    end
  end
```
↓変更後
``` ruby
  def press_button(item)
    return unless @deposit_coin >= item.price
    return unless (item.instance_of?(CupItem) && @cup != 0) || item.class != CupItem

    @cup -= 1 if item.instance_of?(CupItem)
    @deposit_coin -= item.price
    print item.name
  end
```