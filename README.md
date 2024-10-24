# shanari-shanari-database

これはデータベースのスキーマを管理するためのレポジトリです。

#　ローカル環境
Docker 上で検証用の Postgres を立ち上げて動作の確認を実施します。

- コンテナ起動/停止

```
$ docker compose up -d
$ docker compose stop
$ docker compose rm
```

## sqldef の設定

Mac で`/usr/local/bin`に環境パスが通っている前提です。  
https://github.com/sqldef/sqldef/releases にて最新のバージョンをダウンロードしてください。

```
$ curl -LO https://github.com/sqldef/sqldef/releases/download/v0.17.21/psqldef_darwin_amd64.zip
$ unzip psqldef_darwin_amd64.zip
$ sudo mv psqldef /usr/local/bin
$ rm -rf psqldef_darwin_amd64.zip
$ psqldef --version
v0.17.21
```

- コマンドの実行

```
$ for i in $(ls ddl/pokemon_vg); do psqldef --dry-run -h localhost -p 5432 -U postgres -W postgres -f ddl/pokemon_vg/${i} postgres; done
```

docker コンテナで正しく作成されているかを確認する

```
$ docker exec -it postgres psql -U postgres -d postgres
```

# 本番環境

Github Actions にて CICD ワークフローを使って自動デプロイを実行します。
