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
gh workflow run test3.yml  # ビルド済みのイメージを使う例
```

## 開発

linter などは CI/CD できるよう
[aquaproj/aqua](https://github.com/aquaproj/aqua)
で管理しています。

```sh
aqua i
task lint
task run
task build-docker
task run-docker
task run-docker1 # 引数つき
```

## GitHub Packages

semver の tag をつけて push すると、GitHub Packages に docker image を publish します。

[Package docker-action-hello](https://github.com/heiwa4126/docker-action-hello/pkgs/container/docker-action-hello)

`test3.yml` と `prebuild/action.yml` は、このイメージを使用します。
