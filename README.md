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