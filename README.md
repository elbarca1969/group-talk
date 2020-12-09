# アプリケーション名
## GroupTalk

# アプリケーション概要
グループ内でツイートを投稿できるアプリケーションを作成しました。ユーザー登録をするとグループを作成することができ、グループのテーマに合ったツイートを投稿することができます。他のユーザーが作成したグループにも参加でき、同じ趣味・趣向を持ったユーザー同士が繋がることができます。ユーザーはグループ検索機能を活用し、興味のあるグループに参加することで、様々な情報を容易に取り入れることができます。また、フォロー・フォロワー機能を活用してユーザー同士の繋がりを深めることができます。

# 本番環境
- アプリケーションURL
  - https://group-talk.herokuapp.com/
- ログイン情報（テスト用）
  - メールアドレス：111@111
  - パスワード：111111

# 利用方法
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
  - ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- ツイート投稿までの流れは以下の通りです。
  - テスト用アカウントでログイン→トップページから左下の参加グループを押下→投稿する→ツイート投稿（ツイート投稿後はツイート詳細ページからツイートの削除をお願いします）
- グループに参加・退会の流れは以下の通りです。
  - グループ一覧→参加ボタンを押下→グループを退会する
- フォローの流れは以下の通りです。
  - ツイートの投稿者かグループの作成者を押下→ユーザー詳細ページ→フォロー押下（フォロー中の場合はフォロー解除）
- 確認後、ログアウト処理をお願いします。

# 目指した課題解決
SNSでの誹謗中傷が現代社会の大きな問題となっております。それを解決したいと思い、このアプリケーションの実装を進めました。誹謗中傷の原因は次の2点だと考えました。
- 課題
  - SNS上は架空の場所で唐突に会話が始まる
  - 正確な情報を捉えにくい

これらの課題を解決するために以下の機能を実装しました。
- 課題解決のための機能
  - 同じ趣味・趣向を持ったユーザー同士が集まるグループ内で思いを共有することで、同じ価値観のユーザー同士で繋がることができます。
  - グループの参加人数を表示し、グループ一覧ページでは参加人数が多い順に上から表示することで、信頼度の高い情報を得られやすいようにしました。

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false, unique: true |
| introduction       | string |                           |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :group_users
- has_many :groups, through: group_users
- has_many :tweets
- has_many :owned_groups
- has_many :relationships
- has_many :followings, through: :relationships
- has_many :reverse_of_relationships
- has_many :followers, through: :reverse_of_relationships,

## groups テーブル

| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| name    | string     | null: false, unique: true     |
| content | string     |                               |
| user    | references | null:false, foreign_key: true |

### Association

- has_many :group_users
- has_many :users, through: group_users
- has_many :tweets
- belongs_to :user

## group_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association

- belongs_to :group
- belongs_to :user

## tweets テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| group   | references | null: false, foreign_key: true |

### Association

- belongs_to :group
- belongs_to :user
- has_one_attached :image

## relationships テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| follow   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :follow