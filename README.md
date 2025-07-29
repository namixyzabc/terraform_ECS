# Terraform AWS ECS 環境

このTerraformプロジェクトは、ECS Fargateを使用してAWS上に完全で、コスト最適化された、スケーラブルなWebアプリケーション環境を構築します。

## 機能

- **VPC**: AZ冗長化を備えたパブリック/プライベートサブネット構成
- **NAT**: プライベートサブネットのアウトバウンドトラフィック用のコスト効率的なNATインスタンス
- **Route53**: DNS管理のためのパブリックおよびプライベートホストゾーン
- **セキュリティ**: WAF、SSL用ACM、および細分化されたセキュリティグループ
- **アプリケーション**: ALBを備えたECS Fargate、静的コンテンツ用CloudFront
- **データベース**: RDS MySQL（コスト最適化）とRDS Proxy
- **運用**: CloudWatch Logs、EventBridge、Systems Manager Parameter Store
- **開発**: セキュアアクセス用Bastionホストとアセット用S3

## 前提条件

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) がインストールされていること
- AWSアカウントと設定済みの認証情報
- 登録済みのドメイン名

## セットアップ

1. **リポジトリをクローン:**
   ```sh
   git clone <repository-url>
   cd terraform-aws-ecs
   ```

2. **`terraform.tfvars` ファイルを作成:**
   サンプルファイルをコピーして、環境に合わせて値を更新してください。
   ```sh
   cp terraform.tfvars.example terraform.tfvars
   ```
   **`terraform.tfvars`**
   ```hcl
   env                     = "prod"
   domain_name             = "your-domain.com"
   private_zone_name       = "your-domain.local"
   db_username             = "your-db-user"
   db_password             = "your-secure-db-password"
   ```

## デプロイ

1. **Terraformを初期化:**
   ```sh
   terraform init
   ```

2. **デプロイ計画を確認:**
   ```sh
   terraform plan
   ```

3. **変更を適用:**
   ```sh
   terraform apply
   ```

## クリーンアップ

このプロジェクトで作成されたすべてのリソースを削除するには:
```sh
terraform destroy
```

## ファイル構成

- **`main.tf`**: インフラストラクチャのメインリソース定義を含む
- **`variables.tf`**: すべての入力変数を定義
- **`outputs.tf`**: デプロイ後の出力値を指定
- **`terraform.tfvars.example`**: 変数値のサンプル
- **`README.md`**: このファイル
