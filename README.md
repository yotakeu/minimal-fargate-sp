# minimal-fargate-sp
Sample Terraform templates for Sysdig Serverless Agent with security-playground image

Sysdig Serverless Agentで保護しているAWS Fargateに対する脅威検知テストとして、下記Security Playgroundイメージから作成したFargateタスクを使用する方法をご紹介します。

https://github.com/sysdiglabs/security-playground

Security Playgroundでは、外部からcurlコマンドを介してコンテナ上で任意のコマンド実行が可能です。これをリモートコマンド実行の脆弱性を有するアプリケーションを模擬した被害者コンテナとして使用します。

## 環境のデプロイ
Terraformで以下をデプロイします。
- Sysidig Orchastrator Agent
- Security Playground（擬似アタック被害コンテナ） + Sysdig Workload Agent

※必ずTerraformファイルの記述をよく確認し、ご自身の環境で使用しても問題ないことをご確認ください。

Sysdig Serverless Agentのドキュメントは下記になります。

https://docs.sysdig.com/en/docs/installation/sysdig-secure/install-agent-components/ecs-on-fargate/

### 変数の設定
Terraformファイルのvariables.tfの値を、ご自身の環境に合わせて修正してください。

## 脅威検知テスト
下記curlコマンドの引数にFargate workload taskのPublicもしくはPrivate IPアドレスを指定します。

### 攻撃例1：shadowファイルの読み込み
curl IPアドレス::8080/etc/shadow

### 攻撃例2：/dev配下へのファイル書き込み
curl -X POST IPアドレス:8080/exec -d 'command=touch /dev/bbb'
