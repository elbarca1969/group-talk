# アプリケーション名
**GroupTalk**
<br>
ユーザー同士のコミュニケーションを深めるために、グループ内で同じ話題を共有することができるアプリケーションという意味です。

<br>

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

# 洗い出した要件
| 機能                  | 目的                                                                      |
|----------------------|---------------------------------------------------------------------------|
| ユーザー管理機能        | ユーザーが新規登録、ログイン・ログアウトできるようにするため                        |
| フォロー・フォロワー機能 | 同じ趣味・趣向を持ったユーザーを見つけ、ユーザー同士の繋がりを広げていけるようにするため |
| SNS認証               | ユーザーアカウント登録方法の選択肢を増やすため                                   |
| グループ管理機能        | 同じ趣味・趣向を持った人とグループ内で思いを共有するため                           |
| グループ検索機能        | ユーザーが簡単に自分の趣味・趣向にあったグループを見つけることができるようにするため    |
| ツイート投稿機能        | 自分の思いや写真を投稿することで、他のユーザーと価値観を共有するため                 |
| いいね機能             | ユーザーの自己肯定感が高まるようにするため                                       |

# 実装した機能についてのGIFと説明
### ユーザー管理機能
- ユーザーの新規登録
[![Image from Gyazo](https://i.gyazo.com/7d796c00df600baa30175037c623e24c.gif)](https://gyazo.com/7d796c00df600baa30175037c623e24c)
・Nickname、email、password、password_confirmationが入力すると新規登録ができます。<br>・introductionは入力していなくても新規登録ができます。

- ログイン・ログアウト
[![Image from Gyazo](https://i.gyazo.com/7012dc5888fc5b515ad8988556afdf0e.gif)](https://gyazo.com/7012dc5888fc5b515ad8988556afdf0e)
・emailとパスワードを入力すれば、ログインすることができます。<br>・ログアウトボタンをクリックするとログアウトすることができます。

- ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/8d795f1ecd99de5fd1b7bfa96e99422b.gif)](https://gyazo.com/8d795f1ecd99de5fd1b7bfa96e99422b)
・ユーザー詳細ページでは、本人のみに「アカウント編集」ボタン、本人以外には「フォロー」ボタンが表示されます。<br>・ユーザーのフォロー・フォロワー一覧を見ることができます。<br>・ユーザーが投稿したツイートが見ることができます。

### フォロー・フォロワー機能
- 他のユーザーをフォローすることができる。フォローを外すことができる
[![Image from Gyazo](https://i.gyazo.com/ea3cccfd265d969fa3587f6378605ea6.gif)](https://gyazo.com/ea3cccfd265d969fa3587f6378605ea6)
・「フォロー」ボタンをクリックするとフォローすることができます。<br>・フォローしたユーザーのツイートはトップページに表示されます。<br>・「フォロー中」ボタンをクリックするとフォローを外すことができます。

- フォロー・フォロワーの一覧
[![Image from Gyazo](https://i.gyazo.com/46eff1a91f1d5291cf4f6aaebacec06b.gif)](https://gyazo.com/46eff1a91f1d5291cf4f6aaebacec06b)
・ユーザー詳細ページにフォロー・フォロワーの人数が表示されます。<br>・フォロー・フォロワーの一覧を見ることができます。そこから他のユーザーの詳細ページに遷移することができます。

### グループ管理機能
- グループ作成
[![Image from Gyazo](https://i.gyazo.com/460995c2e965f7a0a0927ee55bd1f4bd.gif)](https://gyazo.com/460995c2e965f7a0a0927ee55bd1f4bd)
・「新規グループ作成」ページからグループ名を入力すれば新規グループを作成することができます。<br>・グループを作ったユーザーがグループの管理者になり、グループ内容の変更と削除をすることができます。

- グループ一覧ページ
[![Image from Gyazo](https://i.gyazo.com/a7c5560eee03d50d3d3b03612d51dad5.gif)](https://gyazo.com/a7c5560eee03d50d3d3b03612d51dad5)
・参加人数の多いグループから順に上から表示されます。<br>・「参加中」のボタンをクリックするとグループのチャット画面に遷移します。

- グループに参加
[![Image from Gyazo](https://i.gyazo.com/025a686d35ef6df7d83dd4240db3295a.gif)](https://gyazo.com/025a686d35ef6df7d83dd4240db3295a)
・「参加」ボタンをクリックするとグループに参加することができ、グループのチャット画面に遷移します。

- グループを退会
[![Image from Gyazo](https://i.gyazo.com/d4e619f40bf0ddc1a9d4c2815e11b86c.gif)](https://gyazo.com/d4e619f40bf0ddc1a9d4c2815e11b86c)
・グループのチャット画面にある「グループを退会する」ボタンをクリックするとグループを退会することができます。

- グループ詳細ページ
[![Image from Gyazo](https://i.gyazo.com/0b13f597df5bf9ffc44b247475c40223.gif)](https://gyazo.com/0b13f597df5bf9ffc44b247475c40223)
・グループ内で投稿された全てのツイートが表示されます。<br>・グループの作成者には「編集」「削除」ボタンが表示されます。<br>・投稿者をクリックするとユーザー詳細ページに遷移します。

### グループ検索機能
- グループを検索することができる
[![Image from Gyazo](https://i.gyazo.com/b0613ed547b272d056b8c21b9f183a11.gif)](https://gyazo.com/b0613ed547b272d056b8c21b9f183a11)
・グループ一覧ページの上部の検索窓にキーワードを入力したら、該当するグループを探すことができます。

### ツイート投稿機能
- 所属しているグループで新規投稿ページから写真付きでツイートを投稿することができる
[![Image from Gyazo](https://i.gyazo.com/953329e971aeacb794ebc46ff1883e24.gif)](https://gyazo.com/953329e971aeacb794ebc46ff1883e24)
・「投稿する」ボタンをクリックすると、ツイート投稿ページに遷移します。<br>・ツイートを書くか、写真を添付すれば投稿することができます。

# 今後実装したい機能
- いいね機能<br>他のユーザーから自分のツイートにいいねをもらえることで自己肯定感が高まり、良いツイートを投稿しようと考えるユーザーが増えると予想します。そうすることで誹謗中傷のないアプリケーションの実現により近づくことができます。

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
- has_many :followers, through: :reverse_of_relationships
- has_many :likes
- has_one_attached :avator

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
- has_many :likes

## relationships テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| follow   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :follow

## likes テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| user_id  | integer | null: false |
| tweet_id | integer | null: false |

### Association

- belongs_to :user
- belongs_to :tweet