# FunctionBook
![Minecraft version](https://img.shields.io/badge/MC-1.21.4%20--%201.21.5-blue.svg)

本にコマンドを書くと、棒で実行できるようになります。


## 何ができるのか
本にコマンドを書くと、棒で実行できるようになります。コマンドを切り替えたり、コマンドの名前やスニーク中やスプリント中のコマンドも設定できます。

![image](https://github.com/user-attachments/assets/e2bd4ef3-8e87-444a-ae3d-d3f5c752dec1)


## 使い方

以下デフォルトのキー設定として説明します。

1. **Function Stick と、 Function Book を入手します。**
```mcfunction
/function #fb:give/stick
```
```mcfunction
/function #fb:give/book
```

2. **Function Book の2ページ目以降にコマンドを書きます。**

![image](https://github.com/user-attachments/assets/787e4697-384b-44c0-ae13-2543a29d4d53)

3. **Function Stick を手に持ち、 [Ctrl+Shift+右クリック] で設定を更新します。**
4. **Function Stick を手に持ち、[右クリック] をすると設定したコマンドが実行されます。**

- **本に2ページ以上記入すると、Function Stick を [Ctrl+Shift+右クリック] でページ毎に設定した内容を切り替えることができます。**
- **Function Stick を持って切り替える際に、上側を向くと次のページへ、下側を向くと前のページへ内容が切り替わります。**
- **Function Book を複数作成すると、開いて完了を押した方が Function Stick を更新した際に適用されます。**

### その他のコマンド
- `/function #fb:help` でこのページを開くことができます。
- `/function #fb:version` でバージョンを確認できます。
- `/function #fb:uninstall` でアンインストールできます。

### Function Book 内で使用可能なコマンド
`/name <text>`: このFunction Stick の名前を設定できます。

`/sneak <command>`: [Shift+右クリック] をした時に実行されるコマンドを設定できます。

`/sprint <command>`: [Ctrl+右クリック] をした時に実行されるコマンドを設定できます。


## ダウンロード
[Releases](https://github.com/slimed-kyuri/FunctionBook/releases)からバージョンにあった**FunctionBook**(データパック)をダウンロードできます。

ダウンロードしたデータパックは解凍し、ワールドのdatapackフォルダの中に入れて`/reload`を実行すると読み込まれます。

## 依存ライブラリ
本データパックは単体で使用することができます。

## ライセンス
[MIT License](LICENSE)

## 最後に
デバッグする時にいつもコマブロに書いてボタンを押していたところを、アイテムとして持ち運べて簡単に実行したり編集できるようにしたいと思ったのがきっかけで作成しました。デタパを入れる手間やバージョンの違いで使えない可能性があることを考えると、本当に便利なのかは分かりません。個人的には作成できて達成感があったし、久しぶりに公開できて良かったです。
