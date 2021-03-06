### ND80-AIDS Version 1.0

1988年当時、もはやかれこれ、ちょうど30年も前の話です。  
当時のコンピュータマニア必携の雑誌の中に、バックアップ活用テクニックというのがありました。  
この雑誌に、当時 MSX で動作する最強のスクリーンエディット対応 16進ダンプツール、その名も MSX-AIDS が投稿されました。  
この MSX-AIDS は、大きく以下の機能を有してます。  
* 16進ダンプ
* Z80 逆アセンブルリストの出力
* カーソルキーや PgUp, PgDown によるカーソル移動

ND80にも `DM`コマンドや `CM`コマンドがありメモリダンプやエディットは可能ですが、あの当時の MSX-AIDS の操作感が忘れられず、30年の時を超え ND80版 MSX-AIDS, その名も ND80-AIDS を製作(移植)しました。

#### 実行方法

ND80-AIDS は、ND80Z3 で動作しますが、スクリーンエディタである性質上、独立化キット上でのみ動作します。また、内部的には Z80 の命令を使いまくっているので、 8080 の機種では動作しません。  

ZB3BASIC環境から起動する場合は、以下のようにして起動してください。  

```
LD ND80AIDS.BIN,C300
USR($D000)
```

メモリエリアは、C300～D9FFhの間が ND80-AIDS 本体で変更不可、それ以外はフリーです。  

CP/M環境から起動する場合には以下のように実行します。  

```
ND80AIDS
```

メモリエリアは、BC00～D2FFhの間が ND80-AIDS 本体で変更不可、それ以外はフリーです。(CP/Mのルールに準じます)  

なお、 ND80-AIDS はもともと横 40 文字環境で動作したモニタです。ですので、 ND80 版においても 40 文字幅で動作します。  
ゆくゆくは 80 文字環境の場合は画面左にダンプリスト＆画面右で逆アセンブル、みたいな表示にできるよう改造を進めていく所存です。
