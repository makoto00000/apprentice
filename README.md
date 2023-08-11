# SERVERSIDE APPRENTICE 1st

アプレンティスのサーバーサイド1期生のカリキュラムです。エンジニアとして現場で活躍するためのスキルを実践的に身につけていきます。

## 注意事項

- mainブランチ、各期生のブランチには直接プッシュしないでください
- 内容を修正したい場合は別途ブランチを切り、修正したいブランチに対してプルリクエストを作成してください
- プルリクエストのマージは運営が行うため、マージは行わないでください
- 提出 QUEST の最終締切までに提出できなかった場合、GAME OVER となり、退校となります

## ゴール

本カリキュラムを通じて「フルサイクルエンジニア」としてのスキルを身につけることを目指します。具体的には「課題に対して、要件定義から設計・実装・運用までの一連のサイクルを行い、課題そのものを自ら解決でき」、結果として「事業をドライブすることができる」エンジニアを目指します。

そのための学習ロードマップが [Skill Doc](skilldoc)  です。Skill Doc の内容を理解することで、フルサイクルエンジニアとして必要なスキルが「わかった」状態になります。

Skill Doc の内容を身につけるためにあるのが [QUEST](quest) です。QUEST で演習を行い、「わかった」を「できる」にします。QUEST を自力で解くのが何よりも重要です。自力でできるようになるまで、何度も繰り返し解きましょう。

## 全体スケジュール

- 4/10(月) - 8/25(金)：DEV CAMP
- 8/26(土), 8/27(日), 9/2(土), 9/3(日)：アプレンティスシップドラフト
- 9月：アプレンティスシップ面接
- 11月：アプレンティスシップ開始

## 学習の進め方

2週間ごとに以下の内容を行います。

1. QUEST を解く
   1. Skill Doc を読む
   2. QUEST を手元で解く。advanced も基本的には必須だが、時間に余裕がない場合はスキップしてもよい
   3. 提出 QUEST を解き、GitHub のご自身のリポジトリ、Gist もしくはその他ドキュメントツールにアップする(本リポジトリにはプッシュしない)
   4. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing)にアップした URL を記載する(URL は公開設定になっていることを確認する)
2. 技術ブログ記事を投稿する
   1. 学んだことを技術ブログ記事として1本以上書き、Qiita や Zenn、ブログサイト等に投稿する
   2. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing)にブログ記事の URL を記載する(複数ある場合は1つでOK)

余裕がある場合は次の内容にもトライしましょう。技術力が付き、企業からの評価も俄然良くなります。

- 興味を持ったものを作成する
- OSSにコミットする
- オリジナルサービスの作成を進める
- オリジナルサービスにモダンな技術を取り入れる

各分野の推薦教材は[推薦教材一覧](RESOURCES.md)にまとめてありますのでご参照ください。

## カリキュラム

### Week 1-2: Ruby/オブジェクト指向

期間：4/10(月) - 4/23(日), 締切：4/23(日), 最終締切：5/7(日)

1. Skill Doc を読む
   1. [[学習力][Level1] 続的に学習時間を確保できる](skilldoc/conceptual_skills/curiosity/STUDY_HOURS.md)
   2. [[実装力][Level1] コードを手元で動かすことができる](/skilldoc/technical_skills/coding_skills/RUN_CODE.md)
   3. [Ruby](/skilldoc/technologies/RUBY.md)
2. QUEST を解く
   1. [[学習力][Level1] 続的に学習時間を確保できる](/quest/conceptual_skills/curiosity/STUDY_HOURS.md)
   2. [[実装力][Level1] コードを手元で動かすことができる](/quest/technical_skills/coding_skills/RUN_CODE.md)
   3. [[Ruby][Level1] メソッドを自作し使うことができる](/quest/technologies/ruby/METHOD.md)
   4. [[Ruby][Level1] 変数を宣言し代入することができる](/quest/technologies/ruby/VARIABLE.md)
   5. [[Ruby][Level1] 条件分岐を使うことができる](/quest/technologies/ruby/CONDITIONAL_EXECUTION.md)
   6. [[Ruby][Level1] 繰り返し処理を行うことができる](/quest/technologies/ruby/LOOP.md)
   7. [[Ruby][Level2] ブロックを使った配列の処理ができる](/quest/technologies/ruby/BLOCK.md)(advanced)
   8. [[Ruby][Level2] ハッシュを使うことができる](/quest/technologies/ruby/HASH.md)(advanced)
   9. [[Ruby][Level2] シンボルを使うことができる](/quest/technologies/ruby/SYMBOL.md)(advanced)
   10. [[オブジェクト指向][Level2] オブジェクト指向が何かを説明できる](/quest/technologies/object_oriented/OBJECT_ORIENTED_EXPLAIN.md)
   11. [[オブジェクト指向][Level2] オブジェクト指向を使うことができる](/quest/technologies/object_oriented/OBJECT_ORIENTED_DEVELOPMENT.md)
   12. [[Ruby][Level2] モジュールを説明できる](/quest/technologies/ruby/MODULE.md)(advanced)
   13. [[Ruby][Level2] 例外処理を使うことができる](/quest/technologies/ruby/EXCEPTION.md)
   14. [[Ruby][Level2] 外部ライブラリを使うことができる](/quest/technologies/ruby/LIBRARY.md)(advanced)
   15. [[Ruby][Level2] デバッガを活用してデバッグができる](/quest/technologies/ruby/DEBUGGER.md)(advanced)
   16. [[Ruby][Level2] 静的解析ツールを使うことができる](/quest/technologies/ruby/STATIC_ANALYSIS.md)(advanced)
3. 提出 QUEST を提出する
   1. [ブラックジャックゲーム](/quest/technologies/ruby/BLACKJACK.md)
4. ブログ記事を投稿する

### Week 3-4: Linux/Git,GitHub

期間：4/24(月) - 5/7(日), 締切：5/7(日), 最終締切：5/21(日)

1. Skill Doc を読む
   1. [[学習力][Level1] ゴールから逆算して学ぶことができる](/skilldoc/conceptual_skills/curiosity/GOAL.md)
   2. [[コミュニケーション][Level2] 読みやすいドキュメントを書ける](/skilldoc/human_skills/communication/DOCUMENTATION.md)
   3. [Linux](skilldoc/technologies/LINUX.md)
   4. [Git](skilldoc/technologies/GIT.md)
2. QUEST を解く
   1. [[学習力][Level1] ゴールから逆算して学ぶことができる](/quest/conceptual_skills/curiosity/GOAL.md)
   2. [[コミュニケーション][Level2] 読みやすいドキュメントを書ける](/quest/human_skills/communication/DOCUMENTATION.md)
   3. [[linux][Level1] Linux が何かを説明できる](/quest/technologies/linux/LINUX.md)
   4. [[linux][Level1] Linux の環境を用意することができる](/quest/technologies/linux/ENVIRONMENT.md)
   5. [[linux][Level1] ディレクトリを操作できる](/quest/technologies/linux/DIRECTORY.md)
   6. [[linux][Level1] マニュアルを確認できる](/quest/technologies/linux/MAN.md)
   7. [[linux][Level1] ファイルを操作できる](/quest/technologies/linux/FILE.md)
   8. [[linux][Level2] 標準入出力を扱える](/quest/technologies/linux/STANDARD.md)
   9. [[linux][Level2] パーミッションを操作できる](/quest/technologies/linux/PERMISSION.md)
   10. [[linux][Level3] プロセス・ジョブを管理できる](/quest/technologies/linux/PROCESS.md)
   11. [[linux][Level3] シェルスクリプトを書くことができる](/quest/technologies/linux/SHELLSCRIPT.md)
   12. [[linux][Level3] Linux をローカルで使うことができる](/quest/technologies/linux/USE_LINUX.md)(advanced)
   13. [[Git][Level1] コミットができる](/quest/technologies/git/COMMIT.md)
   14. [[Git][Level1] 変更状況を確認できる](/quest/technologies/git/STATUS.md)
   15. [[Git][Level1] 変更を元に戻すことができる](/quest/technologies/git/RESTORE.md)
   16. [[Git][Level2] GitHub を使って開発を進めることができる](/quest/technologies/git/GITHUB.md)
   17. [[Git][Level2] ブランチを利用して開発を進めることができる](/quest/technologies/git/BRANCH.md)
   18. [[Git][Level2] GitHub フローに従って開発を進めることができる](/quest/technologies/git/PULLREQUEST.md)
3. 提出 QUEST を提出する
   1. [パスワードマネージャー](/quest/technologies/linux/PASSWORD_MANAGER.md)
   2. 上記のコードを GitHub 上にアップして提出する。その際に、GitHub フローに従ってプルリクエストを作成し進めること
4. ブログ記事を投稿する

### Week 5-6: データベース/SQL

期間：5/8(月)- 5/21(日), 締切：5/21(日), 最終締切：6/11(日)

1. Skill Doc を読む
   1. [データベース](/skilldoc/technologies/DATABASE.md)
   2. [SQL](/skilldoc/technologies/SQL.md)
   3. [拡張性](/skilldoc/technical_skills/scalability/README.md)
   4. [パフォーマンス](/skilldoc/technical_skills/performance/README.md)
2. QUEST を解く
   1. [[データベース][Level1] データベース関連の基本的な用語を説明できる](/quest/technologies/database/BASIC.md)
   2. [[SQL][Level1] データベースを作成・指定・削除できる](/quest/technologies/sql/DATABASE.md)
   3. [[SQL][Level1] ユーザーを作成・権限付与・削除できる](/quest/technologies/sql/USER.md)
   4. [[SQL][Level1] テーブルを作成・修正・削除できる](/quest/technologies/sql/TABLE.md)
   5. [[SQL][Level1] データを登録・検索・更新・削除できる](/quest/technologies/sql/DATA.md)
   6. [[SQL][Level2] データを検索できる](/quest/technologies/sql/SELECT.md)
   7. [[SQL][Level2] データを絞り込むことができる](/quest/technologies/sql/WHERE.md)
   8. [[SQL][Level2] 検索結果の並び替えができる](/quest/technologies/sql/ORDER.md)
   9. [[SQL][Level2] データを集計できる](/quest/technologies/sql/AGGREGATE.md)
   10. [[SQL][Level2] データをグルーピングできる](/quest/technologies/sql/GROUP.md)
   11. [[SQL][Level2] テーブルを結合できる](/quest/technologies/sql/JOIN.md)
   12. [[SQL][Level2] スタイルガイドに則ってクエリを書ける](/quest/technologies/sql/STYLE_GUIDE.md)
   13. [[SQL][Level3] サブクエリを使うことができる](/quest/technologies/sql/SUBQUERY.md)(advanced)
   14. [[SQL][Level3] 条件分岐ができる](/quest/technologies/sql/CASE.md)(advanced)
   15. [[SQL][Level3] 実行計画を確認できる](/quest/technologies/sql/EXPLAIN.md)(advanced)
   16. [[SQL][Level3] N＋1問題の対策ができる](/quest/technologies/sql/NONE.md)(advanced)
   17. [[データベース][Level2] データベース設計の流れを説明できる](/quest/technologies/database/FLOW.md)
   18. [[データベース][Level2] エンティティを定義できる](/quest/technologies/database/ENTITY.md)
   19. [[データベース][Level2] データベースを正規化できる](/quest/technologies/database/NORMALIZATION.md)
   20. [[データベース][Level2] ER 図を書くことができる](/quest/technologies/database/ER_DIAGRAM.md)
   21. [[データベース][Level2] テーブルを定義できる](/quest/technologies/database/TABLE_DEFINITION.md)
   22. [[データベース][Level2] インデックスを設定できる](/quest/technologies/database/INDEX.md)
   23. [[データベース][Level3] トランザクションについて説明できる](/quest/technologies/database/TRANSACTION.md)(advanced)
   24. [[データベース][Level3] 同時実行制御について説明できる](/quest/technologies/database/LOCK.md)(advanced)
3. 提出 QUEST を提出する
   1. [インターネットTV](/quest/technologies/database/INTERNET_TV.md)
4. ブログ記事を投稿する
5. オリジナルプロダクトのテーマを提出する
   1. [オリジナルプロダクトのテーマ](/quest/technologies/original_product/THEME.md)を決定する
   2. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) にテーマのURLを提出し、メンターに連絡する

### Week 7-8: HTML/CSS/JavaScript

期間：5/22(月) - 6/4(日), 締切：6/4(日), 最終締切：6/25(日)

1. Skill Doc を読む
   1. [HTML](/skilldoc/technologies/HTML.md)
   2. [JavaScript](/skilldoc/technologies/JAVASCRIPT.md)
2. QUEST を解く
   1. [[HTML][Level1] HTML と CSSについて説明できる](/quest/technologies/html/HTML_EXPLAIN.md)
   2. [[HTML][Level1] HTML と CSS の基本を理解している](/quest/technologies/html/HTML_BASIC.md)
   3. [[HTML][Level2] 簡単なサイトの模写ができる](/quest/technologies/html/SIMPLE_SITE_COPY.md)
   4. [[HTML][Level2] レスポンシブ対応できる](/quest/technologies/html/RESPONSIVE.md)
   5. [[HTML][Level2] HTML/CSS スタイルガイドに則って書ける](/quest/technologies/html/STYLEGUIDE.md)
   6. [[JavaScript][Level1] JavaScript について説明できる](/quest/technologies/javascript/JAVASCRIPT_EXPLAIN.md)
   7. [[JavaScript][Level1] 変数を宣言し代入することができる](/quest/technologies/javascript/VARIABLE.md)
   8. [[JavaScript][Level1] 関数を定義し使うことができる](/quest/technologies/javascript/FUNCTION.md)
   9. [[JavaScript][Level1] 条件分岐を使うことができる](/quest/technologies/javascript/CONDITIONAL_EXECUTION.md)
   10. [[JavaScript][Level1] ループを使うことができる](/quest/technologies/javascript/LOOP.md)
   11. [[JavaScript][Level1] データ型を使い分けることができる](/quest/technologies/javascript/DATA_TYPE.md)
   12. [[JavaScript][Level1] オブジェクトを使うことができる](/quest/technologies/javascript/OBJECT.md)
   13. [[JavaScript][Level2] DOM 操作ができる](/quest/technologies/javascript/DOM.md)
   14. [[JavaScript][Level2] ブラウザ環境でのデバッグができる](/quest/technologies/javascript/DEBUG.md)
   15. [[JavaScript][Level2] スタイルガイドに則り書くことができる](/quest/technologies/javascript/STYLEGUIDE.md)
   16. [[JavaScript][Level2] インタラクティブな Web アプリを作成できる](/quest/technologies/javascript/INTERACTIVE.md)
   17. [[JavaScript][Level3] クラスを自作し使うことができる](/quest/technologies/javascript/CLASS.md)(advanced)
   18. [[JavaScript][Level3] 例外処理を使うことができる](/quest/technologies/javascript/EXCEPTION.md)(advanced)
   19. [[JavaScript][Level3] ライブラリを使用できる](/quest/technologies/javascript/LIBRARY.md)(advanced)
   20. [[JavaScript][Level3] Lint ツールを使用できる](/quest/technologies/javascript/LINT.md)(advanced)
   21. [[JavaScript][Level3] 非同期で処理できる](/quest/technologies/javascript/ASYNC.md)(advanced)
   22. [[JavaScript][Level3] Ajax 通信できる](/quest/technologies/javascript/ajax.md)(advanced)
   23. [[JavaScript][Level3] JavaScript フレームワークを使うことができる](/quest/technologies/javascript/FRAMEWORK.md)(advanced)
   24. [[JavaScript][Level4] ブラウザの仕組みを説明できる](/quest/technologies/javascript/BROWSER.md)(advanced)
   25. [[JavaScript][Level4] TypeScript を使うことができる](/quest/technologies/javascript/TYPESCRIPT.md)(advanced)
3. 提出 QUEST を提出する
   1. [模写](/quest/technologies/html/REPRODUCTION.md)を作成する。[1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) には完了時点で「◯」と記載し、フィードバック会では画面共有にて作成物及びコードをメンターに見せフィードバックをもらうこと
4. ブログ記事を投稿する
5. オリジナルプロダクトのテーマをブラッシュアップする
   1. メンターからテーマについてのフィードバックを受け、テーマをブラッシュアップする
   2. Skill Doc [[事業貢献思考][Level2] 自分や誰かのための制作物を作ることができる](/skilldoc/conceptual_skills/business_thinking/FOR_WE.md) を読む
   3. Skill Doc [[プロジェクト管理][Level2] 顧客が求めている要求を明確にできる](/skilldoc/technical_skills/project_management/REQUIREMENTS_ANALYSIS.md) を読む
   4. Skill Doc [[プロジェクト管理][Level2] 要求をシステム要件として定義できる](/skilldoc/technical_skills/project_management/REQUIREMENT_DEFINITION.md) を読む
   5. [要件定義](/quest/technologies/original_product/REQUIREMENT_DEFINITION.md) を行う
   6. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) に修正したテーマと要件定義を記載したURLを提出する

### Week 9-10: Rails/API/テスト

期間：6/5(月)- 6/18(日), 締切：6/18(日), 最終締切：7/16(日)

1. Skill Doc を読む
   1. [Rails](/skilldoc/technologies/RAILS.md)
   2. [API](/skilldoc/technologies/API.md)
   3. [テスト](/skilldoc/technologies/TEST.md)
   4. [[実装力][Level2] エラー原因を特定することができる](/skilldoc/technical_skills/coding_skills/ERROR.md)
2. QUEST を解く
   1. [[実装力][Level2] エラー原因を特定することができる](/quest/technical_skills/coding_skills/ERROR.md)
   2. [[Rails][Level2] MVC について説明できる](/quest/technologies/rails/MVC.md)
   3. [[Rails][Level2] CRUD 処理を実装できる](/quest/technologies/rails/CRUD.md)
   4. [[Rails][Level2] ActiveRecord を使いこなせる](/quest/technologies/rails/ACTIVERECORD.md)
   5. [[API][Level2] API について説明できる](/quest/technologies/api/API.md)
   6. [[API][Level2] Postman を使って API をテストできる](/quest/technologies/api/POSTMAN.md)
   7. [[API][Level2] 簡単な API を作成できる](/quest/technologies/api/EASY_API.md)
   8. [[API][Level2] API を利用できる](/quest/technologies/api/USE_API.md)
   9. [[API][Level3] REST について説明できる](/quest/technologies/api/REST.md)(advanced)
   10. [[API][Level3] JWT 認証 について説明できる](/quest/technologies/api/JWT.md)(advanced)
   11. [[API][Level3] JWT 認証を実装できる](/quest/technologies/api/CREATE_JWT.md)(advanced)
   12. [[テスト][Level2] テストコードの方針について説明できる](/quest/technologies/test/TEST_POLICY.md)
   13. [[テスト][Level2] テストの種類について説明できる](/quest/technologies/test/TEST_TYPE.md)
   14. [[テスト][Level2] 単体テストを書くことができる](/quest/technologies/test/UNIT_TEST.md)
   15. [[テスト][Level2] 結合テストを書くことができる](/quest/technologies/test/INTEGRATION_TEST.md)
3. 提出 QUEST を提出する
   1. [RealWorld](/quest/technologies/rails/REALWORLD.md)
4. ブログ記事を投稿する
5. オリジナルプロダクトの設計案第一弾を提出する
   1. Skill Doc [[プロジェクト管理][Level2] 要件をシステムの設計に落とし込める](/skilldoc/technical_skills/project_management/DESIGN.md) を読む
   2. Skill Doc [[プロジェクト管理][Level3] TTPS できる](/skilldoc/technical_skills/project_management/TTPS.md) を読む
   3. [設計](/quest/technologies/original_product/DESIGN.md)　のステップ1を行う
   4. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) に設計のURLを提出する

### Week 11-12: AWS/Web

期間：6/19(月) - 7/2(日), 締切：7/2(日), 最終締切：8/6(日)

1. Skill Doc を読む
   1. [Web](/skilldoc/technologies/WEB.md)
   2. [AWS](/skilldoc/technologies/AWS.md)
   3. [運用](/skilldoc/technical_skills/operation/README.md)
   4. [CI/CD](/skilldoc/technologies/CICD.md)(advanced)
   5. [監視](/skilldoc/technologies/MONITORING.md)(advanced)
2. QUEST を解く
   1. [[Web][Level2] HTTP について説明できる](/quest/technologies/web/HTTP.md)
   2. [[Web][Level2] IP アドレスについて説明できる](/quest/technologies/web/IP.md)
   3. [[Web][Level2] DNS について説明できる](/quest/technologies/web/DNS.md)
   4. [[Web][Level2] ポート番号について説明できる](/quest/technologies/web/PORT.md)
   5. [[Web][Level2] Cookie とセッションについて説明できる](/quest/technologies/web/COOKIE.md)
   6. [[AWS][Level2] AWS について説明できる](/quest/technologies/aws/AWS.md)
   7. [[AWS][Level2] VPC を構築できる](/quest/technologies/aws/VPC.md)
   8. [[AWS][Level2] EC2 を構築できる](/quest/technologies/aws/EC2.md)
   9. [[AWS][Level2] RDS を構築できる](/quest/technologies/aws/RDS.md)
   10. [[AWS][Level2] EC2 上でアプリケーションを動作できる](/quest/technologies/aws/APPLICATION_ON_EC2.md)
   11. [[AWS][Level2] Route53 でドメインを設定できる](/quest/technologies/aws/ROUTE53.md)
   12. [[AWS][Level2] ACM で SSL 化できる](/quest/technologies/aws/ACM.md)
   13. [[CI/CD][Level3] CI/CD について説明できる](/quest/technologies/cicd/CICD.md)(advanced)
   14. [[CI/CD][Level4] CI を構築できる](/quest/technologies/cicd/CI.md)(advanced)
   15. [[CI/CD][Level4] CD を構築できる](/quest/technologies/cicd/CD.md)(advanced)
   16. [[監視][Level4] 監視について説明できる](/quest/technologies/monitoring/MONITORING.md)(advanced)(提出 QUEST に合わせて行うとスムーズ)
   17. [[監視][Level4] エラー監視ができる](/quest/technologies/monitoring/ERROR_MONITORING.md)(advanced)(提出 QUEST に合わせて行うとスムーズ)
   18. [[監視][Level4] URL 監視ができる](/quest/technologies/monitoring/URL_MONITORING.md)(advanced)(提出 QUEST に合わせて行うとスムーズ)
3. 提出 QUEST を提出する
   1. [RealWorld のデプロイ](/quest/technologies/aws/REALWORLD_DEPLOY.md)
4. ブログ記事を投稿する
5. オリジナルプロダクトの設計案第二弾を提出する
   1. [設計](/quest/technologies/original_product/DESIGN.md) のステップ2〜3を追記する
   2. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) に設計のURLを提出し、メンターに連絡する
   3. メンターから設計についてのフィードバックを受け、設計をブラッシュアップする

### Week 13-14: [オリジナルプロダクト①コア機能実装](/technologies/ORIGINAL_PRODUCT.md)

期間：7/3(月)- 7/16(日), 締切：7/16(日), 最終締切：8/27(日)

1. Skill Doc を読む
   1. [オリジナルプロダクト](/skilldoc/technologies/ORIGINAL_PRODUCT.md)
   2. [コードの可読性](/skilldoc/technologies/READABILITY.md)
2. QUEST を解く
   1. [生成系 AI](/quest/technologies/generative_ai/GENERATIVE_AI.md)
   2. [[可読性][Level2] 静的解析ツールを使うことができる](/quest/technologies/ruby/STATIC_ANALYSIS.md)(既出。復習用)
   3. [[可読性][Level3] 読みやすいコードを書くことができる](/quest/technologies/readability/READABLE_CODE.md)
3. 提出 QUEST を提出する
   1. [オリジナルプロダクトのコア機能](/quest/technologies/original_product/CORE.md) を行う
   2. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) に GitHub の URL を提出する
   3. フィードバック会でメンターに画面共有で作成物を共有し、フィードバックをもらう
4. ブログ記事を投稿する

### Week 15-16: [オリジナルプロダクト②インフラ構築](skilldoc/technologies/ORIGINAL_PRODUCT.md)

期間：7/17(月)- 7/30(日), 締切：7/30(日), 最終締切：9/17(日)

1. Skill Doc を読む
   1. [オリジナルプロダクト](/skilldoc/technologies/ORIGINAL_PRODUCT.md)
2. QUEST を解く
3. 提出 QUEST を提出する
   1. [オリジナルプロダクトのインフラ構築](/quest/technologies/original_product/INFRASTRUCTURE.md) を行う
   2. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) にオリジナルプロダククトの URL を提出する (GitHub の URL ではないので注意)
   3. フィードバック会でメンターに画面共有で作成物及びインフラ構成図を共有し、フィードバックをもらう
4. ブログ記事を投稿する

### Week 17-18: [オリジナルプロダクト③MVP完成](skilldoc/technologies/ORIGINAL_PRODUCT.md)

期間：7/31(月)- 8/13(日), 締切：8/13(日), 最終締切：10/8(日)

1. Skill Doc を読む
   1. [オリジナルプロダクト](/skilldoc/technologies/ORIGINAL_PRODUCT.md)
2. QUEST を解く
3. 提出 QUEST を提出する
   1. [オリジナルプロダクトの MVP](/quest/technologies/original_product/MVP.md) を行う
   2. [1期生シート](https://docs.google.com/spreadsheets/d/1C_503tZJnw7BQI1J_IcXPwme6kaX5wNNt1PQgVMqUS0/edit?usp=sharing) にオリジナルプロダククトの URL を提出する
   3. フィードバック会でメンターに画面共有で作成物を共有し、フィードバックをもらう
4. ブログ記事を投稿する

### Week 19-20: アプレンティスシップドラフト準備

期間：8/14(月)- 8/25(金), 締切：8/25(金), 最終締切：10/20(金)

1. オリジナルプロダクトが未完成の場合、完成させる
   1. 自分が書いたコードや設計部分は全て説明できるようにしておく
2. [ユーザーインタビュー](/quest/technologies/original_product/USER_INTERVIEW.md) を行う
3. [プレゼン準備](/quest/technologies/original_product/PRESENTATION.md) を行う
4. 自分が指名を受けた企業の会社情報に目を通す
5. アプレンティスシップドラフトに参加する
