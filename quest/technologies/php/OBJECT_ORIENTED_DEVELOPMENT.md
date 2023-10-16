# オブジェクト指向を使うことができる

自動販売機のプログラムを書くクエストです。

## 1. クラスの定義

自動販売機のプログラムをオブジェクト指向を使って書きましょう。今回実装する内容は下記の通りです。

- 自動販売機のクラス VendingMachine を宣言してください
- ボタンを押すとサイダーが出るようにします。pressButton メソッドを実行すると 'cider' の文字列を返してください

▼インプット

特にありません。

▼アウトプット

pressButton メソッドを実行し、'cider' の文字列を返してください。

▼サンプル呼び出し

```php
vendingMachine = new VendingMachine();
echo vendingMachine->pressButton();
```

▼サンプルアウトプット

```php
cider
```

▼回答例

```php
class VendingMachine
{
    # クラスを完成させてください
}
```

## 2. コンストラクタ

自動販売機のプログラムにコンストラクタメソッドを追加しましょう。下記の仕様を追加します。

- オブジェクトの生成時に自動販売機のメーカー名を記録できるように、コンストラクタメソッド __construct を追加します
- 自動販売機のメーカー名確認ボタンを押すと、メーカー名を返す pressManufacturerName メソッドを追加する

▼インプット

特にありません。

▼アウトプット

pressManufacturerName メソッドを実行し、自動販売機のメーカー名を返してください。

▼サンプル呼び出し

```php
vendingMachine = new VendingMachine('サントリー');
echo vendingMachine->pressManufacturerName();
```

▼サンプルアウトプット

```php
サントリー
```

▼回答例

```php
class VendingMachine
{
    # クラスを完成させてください
}
```

## 3. メソッドの可視性

自動販売機のプログラムのメソッドに可視性を追記します。下記の仕様を追加します。

- コインを入れることのできる depositCoin メソッドを作成します。100円以外のコインは入れられず、100円コインが入れられると自動販売機に金額が貯まります
- 100円以上貯まった状態でボタンを押すとサイダーが出るようにします。サイダーが出ると入れた金額から100円が減ります
- pressManufacturerName メソッドは外部に公開しない非公開メソッドにしてください。private キーワードを使用します

▼インプット

特にありません。

▼アウトプット

100円以上貯まった状態で pressButton メソッドを実行すると、'cider' の文字列を返してください。
pressManufacturerName メソッドを実行すると、Fatal エラーが起こるようにしてください。

▼サンプル呼び出し

```php
vendingMachine = new VendingMachine('サントリー');
echo vendingMachine->pressButton();

vendingMachine->depositCoin(150);
echo vendingMachine->pressButton();

vendingMachine->depositCoin(100);
echo vendingMachine->pressButton();

echo vendingMachine->pressManufacturerName();
```

▼サンプルアウトプット

```php
 # 100円が貯まっていないので空文字が出力されます
 # 100円しかコインは入れられず、100円が貯まっていないので空文字が出力されます
cider
vendingMachine->pressManufacturerName() # Fatal エラー
```

▼回答例

```php
class VendingMachine
{
    # クラスを完成させてください
}
```

## 4. 単一責任の原則

自動販売機プログラムを単一責任の原則に基づいて設計しましょう。下記の仕様を追加します。

- 押したボタンに応じて、サイダーかコーラが出るようにしましょう。サイダーは100円、コーラは150円とします。100円以外のコインは入れられない仕様はそのままです

自動販売機に関する責務とアイテムに関する責務は別のものになります。単一責任の原則に基づいてクラスを設計してください。

▼インプット

特にありません。

▼アウトプット

pressButton メソッドを実行すると、与えられた引数に応じたアイテムを返してください。

▼サンプル呼び出し

```php
cola = new #{アイテムクラス}('cola');
vendingMachine = new VendingMachine('サントリー');
vendingMachine.depositCoin(100);
echo vendingMachine.pressButton(cola);
vendingMachine.depositCoin(100);
echo vendingMachine.pressButton(cola);
```

▼サンプルアウトプット

```php
 # 150円が貯まっていないので空文字が出力されます
cola
```

▼回答例

```php
class VendingMachine
{
    # クラスを完成させてください
}

class # アイテムに関するクラスを作成してください
{
}
```

## 5. 継承

自動販売機プログラムで以下の仕様変更がありました。

- カップコーヒー（カップに注ぐコーヒー）のアイスとホットも選択できるようにします。値段はどちらも100円です
- カップの在庫管理も行ってください。カップコーヒーが一つ注文されるとカップも在庫から一つ減ります。自動販売機が保持できるカップ数は最大100個とします
- カップを追加できるようにしてください

継承を使って実装してください。

▼インプット

特にありません。

▼アウトプット

pressButton メソッドを実行すると、与えられた引数に応じた飲み物を返してください。

▼サンプル呼び出し

```php
hotCupCoffee = new #{カップコーヒーのクラス}('hot');
cider = #{飲み物のクラス}.new('cider');
vendingMachine = new VendingMachine('サントリー');
vendingMachine->depositCoin(100);
vendingMachine->depositCoin(100);
echo vendingMachine->pressButton(cider);

echo vendingMachine->pressButton(hotCupCoffee);
vendingMachine->addCup(1);
echo vendingMachine->pressButton(hotCupCoffee);
```

▼サンプルアウトプット

```php
cider
 # カップが貯まっていないので空文字が出力されます
hot cup coffee
```

▼回答例

```php
class VendingMachine
{
    # クラスを完成させてください
}

class # アイテムに関する責務のクラスを作成してください
{
}

# 飲み物に関する責務のクラスを継承を利用して作成してください
class #{飲み物クラス} < #{アイテムクラス}
{
}

# カップコーヒーに関する責務のクラスを継承を利用して作成してください
class #{カップコーヒークラス} < #{アイテムクラス}
{
}
```

## 6. ポリモーフィズム

自動販売機プログラムにスナック菓子を追加しましょう。下記の仕様を追加します。

- ボタンを押すとポテトチップスが出るようにしましょう。ポテトチップスは150円とします。スナック菓子用のクラスを新規に作ることで対応してください。

ポリモーフィズムを意識して設計してください。

▼インプット

特にありません。

▼アウトプット

pressButton メソッドを実行すると、与えられた引数に応じたアイテムを返してください。

▼サンプル呼び出し

```php
hotCupCoffee = new #{カップコーヒーのクラス}('hot');
cider = new #{飲み物のクラス}('cider');
snack = new #{スナック菓子のクラス};
vendingMachine = new VendingMachine('サントリー');
vendingMachine->depositCoin(100);
vendingMachine->depositCoin(100);
echo vendingMachine->pressButton(cider);

echo vendingMachine->pressButton(hotCupCoffee);
vendingMachine->addCup(1);
echo vendingMachine->pressButton(hotCupCoffee);

echo vendingMachine->pressButton(snack);
vendingMachine->depositCoin(100);
vendingMachine->depositCoin(100);
echo vendingMachine->pressButton(snack);
```

▼サンプルアウトプット

```php
cider
 # カップが貯まっていないので空文字が出力されます
hot cup coffee
 # お金が貯まっていないので空文字が出力されます
potato chips
```

▼回答例

```php
class VendingMachine
{
    # クラスを完成させてください
}

class # アイテムに関する責務のクラスを作成してください
{
}

# 飲み物に関する責務のクラスを継承を利用して作成してください
class #{飲み物クラス} < #{アイテムクラス}
{
}

# カップコーヒーに関する責務のクラスを継承を利用して作成してください
class #{カップコーヒークラス} < #{アイテムクラス}
{
}

# スナック菓子に関する責務のクラスを継承を利用して作成してください
class #{スナック菓子クラス} < #{アイテムクラス}
{
}
```

## ７. まとめ

今回の最終的な仕様のプログラムを、何も見ずに一から作成してください。以下の点に注意してください。

- 今まで作成したプログラムは見ずに作成してください
- 回答例やサンプルインプット、サンプルアウトプットも見ずに作成してください

何も見ずに自分で一から設計することで、オブジェクト指向の理解をより確かなものにすることが狙いです。トライしてみてください。
