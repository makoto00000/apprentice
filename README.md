# APPRENTICE 2nd

アプレンティス2期生のカリキュラムです。エンジニアとして現場で活躍するためのスキルを実践的に身につけていきます。

## ゴール

本カリキュラムを通じて「フルサイクルエンジニア」としてのスキルを身につけることを目指します。具体的には「課題に対して、要件定義から設計・実装・運用までの一連のサイクルを行い、課題そのものを自ら解決でき」、結果として「事業をドライブすることができる」エンジニアを目指します。

そのための学習ロードマップが [Skill Doc](skilldoc)  です。Skill Doc の内容を理解することで、フルサイクルエンジニアとして必要なスキルが「わかった」状態になります。

Skill Doc の内容を身につけるためにあるのが [QUEST](quest) です。QUEST で演習を行い、「わかった」を「できる」にします。QUEST を自力で解くのが何よりも重要です。自力でできるようになるまで、何度も繰り返し解きましょう。

## 学習の進め方

2週間ごとに以下の内容を行います。

1. QUEST を解く
   1. Skill Doc を読む
   2. QUEST を手元で解く。advanced も基本的には必須だが、時間に余裕がない場合はスキップしてもよい
   3. 提出 QUEST を解き、GitHub のご自身のリポジトリにアップする
      1. ご自身のリポジトリでブランチを切り、プルリクエストを作成し、main ブランチに変更をマージしてから、main ブランチの該当コード/ディレクトリを提出する
   4. [2期生シート](https://docs.google.com/spreadsheets/d/1_WqjPvnRlHM-DttUUuJ2kmtfFMv5CBshSeJE2cRjHvg/edit?usp=sharing)にアップした URL を記載する(URL は公開設定になっていることを確認する)
2. 技術ブログ記事を投稿する
   1. 学んだことを技術ブログ記事として1本以上書き、Qiita や Zenn、ブログサイト等に投稿する
   2. [2期生シート](https://docs.google.com/spreadsheets/d/1_WqjPvnRlHM-DttUUuJ2kmtfFMv5CBshSeJE2cRjHvg/edit?usp=sharing)にブログ記事の URL を記載する(複数ある場合は1つでOK)

また、毎日以下の内容を行います。

1. 日報を Discord の「2期生」チャンネルに投稿する。X への投稿も推奨
2. [AtCoder](https://atcoder.jp/?lang=ja) もしくは [Paiza のプログラミングスキルチェック](https://paiza.jp/challenges)の問題を1問以上解く

余裕がある場合は次の内容にもトライしましょう。技術力が付き、企業からの評価も俄然良くなります。

- 興味を持ったものを作成する
- OSSにコミットする
- オリジナルサービスの作成を進める
- オリジナルサービスにモダンな技術を取り入れる

各分野の推薦教材は[推薦教材一覧](RESOURCES.md)にまとめてありますのでご参照ください。

## DRAFT への参加条件

- 最終締切までに提出 QUEST を一通り提出できていること
- Original Product が must 要件を満たしていること
- AtCoder で茶色以上になっていること、または AtCoder ABC で400以上のレートを取得したことがあること、または Paiza で B ランク以上の問題を10問以上解いていること
- 就職活動用の書類が提出できていること

## 注意事項

- 本リポジトリのmainブランチ、各期生のブランチには直接プッシュしないでください
- 本リポジトリの内容を修正したい場合は別途ブランチを切り、修正したいブランチに対してプルリクエストを作成してください
- 本リポジトリへのプルリクエストのマージは運営が行うため、マージは行わないでください
- 各フェーズの最終締切までに、該当フェーズの提出 QUEST を一通り提出できなかった場合、GAME OVER となり、退校となります

## スケジュール

### 全体スケジュール

| 期間 | 内容 |
| ---- | ---- |
| 10/16(月) - 4/28(日) | DEV CAMP。学習期間 |
| 5/25(土), 5/26(日) | DRAFT |
| 6-7月 | 面接 |
| 7-9月 | アプレンティスシップ開始 |

### DEV 1: Introduction

- 最終締切：12/31（日）

| 週 | 期間 | 内容 |
| ---- | ---- | ---- |
| 2W | 事前学習 | [Linux/Git](/curriculum/LINUX.md) |
| 2W | 10/16(月) - 10/29(日) | [Ruby/オブジェクト指向](/curriculum/RUBY.md) or [PHP/オブジェクト指向](/curriculum/PHP.md) |
| 2W | 10/30(月) - 11/12(日) | [データベース/SQL](/curriculum/DATABASE.md) |
| 2W | 11/13(月) - 11/26(日) | [HTML/CSS/JavaScript](/curriculum/HTML.md) |
| 1W | 11/27(月) - 12/3(日) | [チーム開発](/curriculum/TEAM_DEV_1.md) |

### DEV 2: Framework

- 最終締切：4/28（日）
- 並行して、Original Product のテーマ決め及び要件定義を行う

| 週 | 期間 | 内容 |
| ---- | ---- | ---- |
| 3W | 12/4(月) - 12/24(日) | [Rails/テスト](/curriculum/RAILS.md) or [Laravel/テスト](/curriculum/LARAVEL.md) |
| 2W | 12/25(月)- 1/7(日) | [API](/curriculum/API.md) |
| 3W | 1/8(月) - 1/28(日) | [React](/curriculum/REACT.md) |
| 1W | 1/29(月) - 2/4(日) | [チーム開発](/curriculum/TEAM_DEV_2.md) |
| 3W | 2/5(月) - 2/25(日) | [AWS/ネットワーク](/curriculum/AWS.md) 及び [Original Product のテーマ](/curriculum/ORIGINAL_PRODUCT_THEME.md) |

### DEV 3: Original Product

- 最終締切：8/25（日）

| 週 | 期間 | 内容 |
| ---- | ---- | ---- |
| 1W | 2/26(月) - 3/3(日) | [要件定義](/curriculum/ORIGINAL_PRODUCT_REQUIREMENT_DEFINITION.md) 及び [設計](/curriculum/ORIGINAL_PRODUCT_DESIGN.md) |
| 3W | 3/4(月)- 3/24(日) | [コア機能](/curriculum/ORIGINAL_PRODUCT_CORE.md) |
| 3W | 3/25(月) - 4/14(日) | [インフラ](/curriculum/ORIGINAL_PRODUCT_INFRASTRUCTURE.md) |
| 2W | 4/15(月) - 4/28(日) | [MVP/ユーザーインタビュー](/curriculum/ORIGINAL_PRODUCT_MVP.md) |

### DEV 4： Recruiting

- 最終締切：9/29（日） ※ 9月開催予定の DRAFT まで参加可

| 週 | 期間 | 内容 |
| ---- | ---- | ---- |
| 2W | 4/29(月) - 5/12(日) | 書類作成 |
| 2W | 5/13(月)- 5/24(金) | プレゼン準備 |
| 2D | 5/25(土), 5/26(日) | DRAFT |
| - | 6-7月 | 面接 |
| - | 7-9月 | アプレンティスシップ開始 |

※ DRAFT 以降は、企業ごとに選考が進みます。また、アプレンティスシップ開始時期もアプレンティス生と企業との個別調整になります。そのため上記に記載のものは目安となります。
