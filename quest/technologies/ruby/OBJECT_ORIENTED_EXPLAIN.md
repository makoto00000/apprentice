# オブジェクト指向が何かを説明できる

## 1. オブジェクト指向の目的

オブジェクト指向が何のためにあるのか、プログラミング初心者にわかるように説明してください。
```
モノ（オブジェクト）に役割（メソッド）を付与していく考え方。コードが見やすくなる、変更を加えやすいなどのメリットがある。
```

## 2. カプセル化

オブジェクト指向におけるカプセル化とはどのような概念か、プログラミング初心者にわかるように説明してください。

```
クラス自体の変数やメソッドが変更されるのを防ぐ。クラスの外からクラスにアクセスするためのメソッドを定義して、それを経由してクラスにアクセスする。
```

## 3. 継承

オブジェクト指向における継承とはどのような概念か、プログラミング初心者にわかるように説明してください。
```
例えば、「バス」クラスと、「スーパーカー」クラスを定義するとき、共通部分をまとめた「車」クラスを定義する。こうすることで、変更があった際に、「車」クラスを変更すれば全てに反映される。つまり変更に強くなる。
```

## 4. ポリモーフィズム

オブジェクト指向におけるポリモーフィズムとはどのような概念か、プログラミング初心者にわかるように説明してください。

```
前述の継承にあるように、「車」クラスでアクセルを定義するとする。前に進むという動きは共通だが、「バス」クラスと「スーパーカークラス」とでは加速度や最高速度など異なる部分がある。ただし、命令自体は「アクセルを踏む」という共通のものであり、クラスの多様性（ポリモーフィズム）によって、結果的に異なる動きができる。
```

## 5. 単一責任の原則

オブジェクト指向の重要な設計原則である「単一責任の原則」について、プログラミング初心者にわかるように説明してください。
```
「海も渡れる、陸も走れる、空も飛べる、そんな車があったとする」この車には海を渡る機能、陸を走る機能、空を飛ぶ機能が備わっているが、大元の「車」クラスにすべてを乗せてしまうと、新しく「海を渡るだけの車」を作るときに、「海を渡る機能」をもう一度書かなくてはいけなくなる。これらの機能をクラスにわけて書いておくと、使い回しができ、海を渡る機能に変更が生じた際も、元のクラス自体を修正すれば、この機能を有するすべての車に変更が反映される。このように、一つのクラスには一つの責任を持たせると、変更の影響範囲を限定することができる。
```
