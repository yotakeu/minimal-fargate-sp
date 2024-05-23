# AWS Region
variable "region" {
  default = "ap-northeast-1"
}

variable "vpc_id" {
  default = "vpc-xxxxxxxxxxxx"
}

variable "subnet_a_id" {
  default = "subnet-xxxxxxxxxxxx"
}

variable "subnet_b_id" {
  default = "subnet-xxxxxxxxxxxx"
}

# タスクにPublic IPをアサインするか否か。Private Subnetにデプロイする場合はfalseに設定してください
variable "public_ip" {
  default = "true"
}

# Sysdig Access key
variable "access_key" {
  default = ""
}

# ご自身のSysdig SaaSリージョンの値を入力してください（下記はus4の場合）
variable "collector_url" {
  default = "ingest.us4.sysdig.com"
}

# タスク名などの前につけるプレフィックス
variable "prefix" {
  default = "test"
}

# Curlコマンドを打って疑似アタックを実行する端末のIPアドレスを入力してください
# このIPアドレスからWorkloadタスクに対する8080ポート接続を許可するSecurity Group設定を作成します
variable "source_ip" {
  default = "192.168.0.100/32"
}