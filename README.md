# bizudfont-subset
BIZ UDフォントのWOFF2形式サブセットを作るスクリプト

## つかいかた
pipenvとcurl、unzipが必要です。

```Shell
$ pipenv install
$ ./build.sh
```

変換に成功すると、fontsディレクトリ以下にwoff2ファイルが出力されます。
```Shell
$ du -sk fonts/*
896     fonts/BIZUDGothic-Bold.woff2
888     fonts/BIZUDGothic-Regular.woff2
1164    fonts/BIZUDMincho-Regular.woff2
888     fonts/BIZUDPGothic-Bold.woff2
880     fonts/BIZUDPGothic-Regular.woff2
1160    fonts/BIZUDPMincho-Regular.woff2
```

## フォントに含める文字を変更
jis1.txtを編集してください。
デフォルトではJIS第一水準の漢字までが含まれているはずです。

## 参考
- [Wikipedia - JIS X 0213漢字一覧の1面](https://ja.wikipedia.org/wiki/JIS_X_0213%E6%BC%A2%E5%AD%97%E4%B8%80%E8%A6%A7%E3%81%AE1%E9%9D%A2)
- [Wikipedia - JIS X 0213非漢字一覧](https://ja.wikipedia.org/wiki/JIS_X_0213%E9%9D%9E%E6%BC%A2%E5%AD%97%E4%B8%80%E8%A6%A7)

## ライセンス
このスクリプトはMIT Licenseです。
フォントのライセンスはSIL OPEN FONT LICENSE Version 1.1です。
