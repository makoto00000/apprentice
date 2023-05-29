# ACM で SSL 化できる

AWS Certificate Manager (ACM) を利用して、SSL 化 (HTTPS 化)　を行いましょう。SSL 化には色々な方法がございますが、今回は ACM と Elastic Load Balancing (ELB) を利用して行います。

AWS の公式ドキュメントを参考にしながら、以下を進めてください。参考になるドキュメントを紹介します。

- [Application Load Balancer 用の HTTPS リスナーを作成する](https://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/application/create-https-listener.html)
- [パブリック証明書をリクエストする](https://docs.aws.amazon.com/ja_jp/acm/latest/userguide/gs-acm-request-public.html)
- [Application Load Balancer の開始方法](https://docs.aws.amazon.com/ja_jp/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html)

## 1. パブリック証明書のリクエスト

AWS Certificate Manager (ACM) を利用して、取得したドメインに対してパブリック証明書をリクエストしてください。その際に、検証を成功させ、証明書のステータスが Issued (発行済み) になるようにしてください。

## 2. ELB のターゲットグループの作成
