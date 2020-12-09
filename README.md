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