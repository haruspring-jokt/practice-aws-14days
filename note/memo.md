
ssh login

```sh
$ cacls udemy-aws-14days.pem /P 81902:R

$ ssh -i udemy-aws-14days.pem ec2-user@{type.ec2.global.ip}
```

```
sudo yum install httpd         
yum list installed | grep httpd
sudo service httpd status      
sudo service httpd start       
```

## day4-3 プライベートサブネットにDBサーバを立てる

セキュリティグループの設定：hogehogeセキュリティグループがついているEC2からのみ許可、みたいな設定もできる

## RDS

お金かかるなあ
