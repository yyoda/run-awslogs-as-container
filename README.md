### awslogs by container
awslogs を利用するためのコンテナを提供します。
ホストが汚れないためおすすめです。
利用方法は awslogs.pa1 を実行するだけです。

### 前提
* Docker for Windows がインストールされていることが前提です
* ~/.aws/credentials が設置済であることが前提です。

### awslogs コマンドサンプル
```bash
awslogs groups --profile bullet-live
awslogs get --profile bullet-live product0-app-api --no-group --no-stream --timestamp --start='30m' --watch
```

### awslogs の詳しい使い方
https://dev.classmethod.jp/cloud/aws/show-cloudwatch-logs-with-awslogs-command/
