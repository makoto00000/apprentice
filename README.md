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
   9. [[Ruby][Level
   10. 2] シンボルを使うことができる](/quest/technologies/ruby/SYMBOL.md)(advanced)
   11. [[オブジェクト指向][Level2] オブジェクト指向が何かを説明できる](/quest/technologies/object_oriented/OBJECT_ORIENTED_EXPLAIN.md)
   12. [[オブジェクト指向][Level2] オブジェクト指向を使うことができる](/quest/technologies/object_oriented/OBJECT_ORIENTED_DEVELOPMENT.md)
   13. [[Ruby][Level2] モジュールを説明できる](/quest/technologies/ruby/MODULE.md)(advanced)
   14. [[Ruby][Level2] 例外処理を使うことができる](/quest/technologies/ruby/EXCEPTION.md)
   15. [[Ruby][Level2] 外部ライブラリを使うことができる](/quest/technologies/ruby/LIBRARY.md)(advanced)
   16. [[Ruby][Level2] デバッガを活用してデバッグができる](/quest/technologies/ruby/DEBUGGER.md)(advanced)
   17. [[Ruby][Level2] 静的解析ツールを使うことができる](/quest/technologies/ruby/STATIC_ANALYSIS.md)(advanced)
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

### Week 7-8: HTML/CSS/JavaScript

期間：5/22(月) - 6/4(日)

### Week 9-10: Rails/テスト

期間：6/5(月)- 6/18(日)

### Week 11-12: AWS/Web

期間：6/19(月) - 7/2(日)

### Week 13-14: [オリジナルプロダクト①アプリケーション実装](skilldoc/technologies/ORIGINAL_PRODUCT.md)

期間：7/3(月)- 7/16(日)

### Week 15-16: [オリジナルプロダクト②インフラ構築](skilldoc/technologies/ORIGINAL_PRODUCT.md)

期間：7/17(月)- 7/30(日)

### Week 17-18: [オリジナルプロダクト③機能拡張](skilldoc/technologies/ORIGINAL_PRODUCT.md)

期間：7/31(月)- 8/13(日)

### Week 19-20: 1on1イベント準備

期間：8/14(月)- 8/25(金)
