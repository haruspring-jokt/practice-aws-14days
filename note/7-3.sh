#!/bin/bash
# ホスト名
sed -i 's/^HOSTNAME=[a-zA-Z0-9\.\-]*$/HOSTNAME=udemy-aws-14days-batch/g' /etc/sysconfig/network
hostname 'udemy-aws-14days-batch'

# タイムゾーン
cp /usr/share/zoneinfo/Japan /etc/localtime
sed -i 's|^ZONE=[a-zA-Z0-9\.\-\"]"*$|ZONE="Asia/Tokyo"|g' /etc/sysconfig/clock

# 言語設定
echo "LANG=ja_JP.UTF-8" > /etc/sysconfig/i18n

# 必要なパッケージの導入
sudo yum update -y
sudo yum install -y php70 php70-mbstring php70-pdo php70-mysqlnd
sudo yum install -y mysql
sudo yum install -y git
