# docker-action-hello

[Docker コンテナーのアクションを作成する - GitHub ドキュメント](https://docs.github.com/ja/actions/tutorials/use-containerized-services/create-a-docker-container-action)
をやってみる。

若干アレンジ

## 実行

テストは
UI から、もしくは以下の CLI で

```sh
gh workflow run test1.yml
gh workflow run test2.yml  # プライベートアクション版
```

## 開発

```sh
aqua i
task lint
task run
task build-docker
task run-docker
task run-docker1 # 引数つき
```
