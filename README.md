# FunctionBook

本にコマンドを書くと、棒で実行できるようになります。

## 動作確認済みのバージョン

1.21.4

## 何ができるのか
本にコマンドを書くと、棒で実行できるようになります。コマンドを切り替えたり、コマンドの名前やスニーク中やスプリント中のコマンドも設定できます。

![image](https://github.com/user-attachments/assets/e2bd4ef3-8e87-444a-ae3d-d3f5c752dec1)


## 使い方

1. **Function Stick と、 Function Book を入手します。**
```mcfunction
/function #fb:give/stick
```
```mcfunction
/function #fb:give/book
```

2. **Function Book にコマンドを書きます。**

![image](https://github.com/user-attachments/assets/787e4697-384b-44c0-ae13-2543a29d4d53)

3. **Function Stick を手に持ち、スプリントとスニークをした状態で右クリック(Ctrl + Shift + 右クリ)をして設定を更新します。**
4. **Function Stick を手に持ち、右クリックをすると設定したコマンドが実行されます。**

### その他

- ページを変えて設定すると、Function Stick をスプリントとスニークをした状態で右クリック(Ctrl + Shift + 右クリ)でページ毎に設定した内容を切り替えることができます。
- Function Stick を持ち、切り替える際に上側を向くと次のページへ、下側を向くと前のページへ内容が切り替わります。
- 行の先頭に`/`から始まる本のコマンドを書くことでいくつかの機能が使えます。
- Function Book を複数作成すると、開いて完了を押した方が Function Stick を更新した際に適用されます。
- `/function #fb:help` でこのページを開くことができます。
- `/function #fb:uninstall` でアンインストールできます。

### 本の中で使用可能なコマンド
`/name <text>`: このFunction Stick の名前を設定できます。

`/sneak <command>`: スニーク中に右クリック(Shift + 右クリ)をした時に実行されるコマンドを設定できます。

`/sprint <command>`: スプリント中に右クリック(Ctrl + 右クリ)をした時に実行されるコマンドを設定できます。


## ダウンロード
右の[Releases](https://github.com/slimed-kyuri/FunctionBook/releases)から**FunctionBook**(データパック)をダウンロードできます。

ダウンロードしたデータパックはワールドのdatapackフォルダの中に入れ、`/reload`をすると読み込まれます。

## 依存ライブラリ
本データパックは単体で使用することができます。

## ライセンス
[MIT License](LICENSE)

## 最後に
デバッグするときにいつもコマブロに書いてボタンを押していたところを、アイテムとして持ち運べて簡単に実行したり編集できるようにしようと思ったのがきっかけで作成しました。デタパを入れる手間やバージョンの違いで使えない可能性があることを考えると、本当に便利なのかは分かりません。個人的には作成できて達成感があったし、久しぶりに公開できて良かったです。
