# 講義用メモ

## ssh login

```sh
$ cacls udemy-aws-14days.pem /P 81902:R

$ ssh -i udemy-aws-14days.pem ec2-user@{type.ec2.global.ip}
```

```sh
sudo yum install httpd
yum list installed | grep httpd
sudo service httpd status
sudo service httpd start
```

## Day4-3 プライベートサブネットにDBサーバを立てる

セキュリティグループの設定：hogehogeセキュリティグループがついているEC2からのみ許可、みたいな設定もできる

## Day5 RDS

お金かかるなあ

## Day8 Route 53

ホストゾーンのフェールセーフ・セカンダリにS3バケット上のオブジェクト（htmlファイルなど）を選択する場合は、ドメイン名とS3オブジェクト名を一致させる必要がある。だいたいこれを忘れて面倒くさいことになる。

## Day9 IAM

### メリット

- IAMポリシーをIAMグループに割り当てる形にすると管理が楽になる
- IAMロールを作成し、サーバ自体に割り当てることでアクセスキーによる管理が不要になる

### ベストプラクティス

- IAMユーザーを使い回さない
- 役割ごとにIAMグループを作成し、IAMグループに権限を設定する
- 権限は必要最小限のものを割り当て、必要になったら増やす
- 定期的に棚卸しする
- プログラムからの利用は、IAMロールをアタッチする
