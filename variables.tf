# AWS Region
variable "region" {
  default = "ap-northeast-1"
}

variable "vpc_id" {
  default = "vpc-02c8b4517237cc1c4"
}

variable "subnet_a_id" {
  default = "subnet-0f464b3ab09d20015"
}

variable "subnet_b_id" {
  default = "subnet-040a8eb342a9a7ec2"
}

# Sysdig Access key
variable "access_key" {
  default = ""
}

# Sysdig Secure API Token
variable "secure_api_token" {
  default = ""
}

# ご自身のSysdig SaaSリージョンの値を入力してください（下記はus4の場合）
variable "collector_url" {
  default = "ingest.us4.sysdig.com"
}

# ご自身のSysdig SaaSリージョンの値を入力してください（下記はus4の場合）
variable "sysdig_secure_url" {
  default = "https://app.us4.sysdig.com"
}

# タスク名などの前につけるプレフィックス
variable "prefix" {
  default = "test"
}

# Curlコマンドで疑似アタックを実行するターミナルのIPアドレスを入力してください
variable "source_ip" {
  default = "192.168.0.100/32"
}