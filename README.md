# gulp-rsync-sample
gulp-syncを使ってみたので、せっかくだからリポジトリにサンプルを残しておこうというあれです。


## 使い方

### gulp.jsをインストール

```
$ npm install -g gulp
```

### ソースコードをおとす

```
$ git clone ...
```

### npm installしよう

```
$ npm install
```


### config.jsonを用意する

```
{
  "target" : {
    "serverPath": "~/test",
    "localPath": "/Users/polidog/test",
    "hostname": "hogehoge.jp"
  }
}

```

### gulpを起動する

```
gulp
```

これだけでサーバと同期がとれます。

## TODO
変更点があったファイルだけrsyncするようにしたい・・・できるはず。。。
