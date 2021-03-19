# **GroupTalk**
共有したい話題のグループを立ち上げ、共通の関心を持ったユーザーが集まり、グループ内でコミュニケーションをとることができるアプリケーションです。

<br>

# 本番環境
アプリケーションURL  http://35.73.114.96/
<br>
ログイン情報
- 「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインし、アプリケーションを閲覧することができます。

もしくは「ログイン」をクリックし、以下の項目を入力すると、テスト用アカウントでの閲覧も可能です。
- テスト用アカウント
  - メールアドレス：ichiro@grouptalk.com
  - パスワード：111one

<br>

# 利用方法
- 上記の通りにログインをして下さい。
  - 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- グループの参加・退会の流れは以下の通りです。
  - グループ一覧ページもしくはグループ詳細ページの「参加」をクリックでグループに参加
- ツイート投稿までの流れは以下の通りです。
  - 左下に表示されている参加グループのいずれかのグループをクリック→「ツイート」をクリック→テキストを入力もしくは写真を添付→「ツイート」をクリックで投稿が完了
- 確認後、ログアウト処理をお願いします。

<br>

# 目指した課題解決
共通の関心を持ったユーザーの繋がりを深め、ユーザーが安心して情報の発信・収集ができるアプリケーションを目指しました。<br>
Webサービス(主にSNS)での誹謗中傷が現代社会の大きな課題です。自分の価値観を他ユーザーに押し付けてしまい、ユーザー同士のコミュニケーションが上手く取れていないため誹謗中傷が起こるのではないかと考えました。<br>
そこから以下の課題を洗い出し、それを解決するための仮説を立てました。
- 課題
  - SNS上は架空の場所で唐突に会話が始まる
  - 様々な情報がネット上に飛び交い、正確な情報を捉えにくい

これらの課題を解決するために以下の仮説を立てました。
- 課題解決のための仮説
  - 共通の関心を持ったユーザーが集まるグループを自由に作成することができ、そのグループ内で共通の話題をテーマに価値観を共有することで、ユーザー同士のコミュニケーションがより深まるだろう。
  - グループの参加人数を表示することで、それが信頼度になり、ユーザーが安心してグループに参加し情報の発信・収集をすることができるだろう。

<br>

# 洗い出した要件
| 機能                  | 目的                                                                     | 所要時間 |
|----------------------|--------------------------------------------------------------------------|--------|
| ユーザー管理機能        | ユーザーの新規登録、ログイン・ログアウトをできるようにするため                     | 約20h  |
| グループ管理機能        | 共通の関心を持ったユーザー同士が同じグループで思いや価値観を共有できるようにするため   | 約30h  |
| 検索機能              | キーワードを元に関心のあるグループやユーザーを見つけられるようにするため              | 約10h  |
| ツイート投稿機能        | グループ内で自分の思いを投稿することで、他のユーザーと価値観を共有できるようにするため | 約30h  |
| いいね機能             | 投稿に対していいねを押してもらうことで、ユーザーの自己肯定感が高まるようにするため     | 約12h  |
| フォロー・フォロワー機能 | 共通の関心を持ったユーザーを見つけフォローすることで、ユーザー同士の繋がりを深めるため  | 約15h  |

<br>

# ユーザーからのフィードバック
### 【良い点】
・グループ内での交流なので場当たり的な投稿ではなく、考える時間が生まれ温かな場になると思う。<br>
・話題のグループをTOP20として表示させているのは、ユーザーもタイムリーな話題を探さずにエントリーできるのですごく分かりやすい。<br>

### 【改善点】
・同じ趣味や興味をもつユーザーを見つけやすくした方がユーザーの繋がりが増えると思った。<br>
- 改善点を元に実装した機能
  - ユーザー検索ページを作成しました。ユーザー名と自己紹介のどちらの項目からでもキーワードで検索できるようにすることで、同じ趣味や興味をもつユーザーを見つけやすくしました。<br>

<br>

# 実装した機能についてのGIFと説明
### トップページ
- ホーム
[![Image from Gyazo](https://i.gyazo.com/3bd5538a58de70f678879ab1ec044996.png)](https://gyazo.com/3bd5538a58de70f678879ab1ec044996)
・左側下部には、参加中のグループが表示されています。<br>
・メイン部分には、フォローしたユーザーの投稿が時系列順で表示されます。<br>
・右側には、参加人数が多いTOP20のグループが上から表示されています。<br>

- チャットページ
[![Image from Gyazo](https://i.gyazo.com/15ed22816faf5ac1814001c277a4bc1e.gif)](https://gyazo.com/15ed22816faf5ac1814001c277a4bc1e)
・左側下部の参加グループリストのグループ名をクリックするとそのグループのチャットページに遷移します。<br>
・メイン部分には、そのグループ内で投稿されたツイートが時系列順に表示されます。<br>

- レスポンシブ(タブレット用)
[![Image from Gyazo](https://i.gyazo.com/767de13dad845d47ef1e668e0bce3b3a.png)](https://gyazo.com/767de13dad845d47ef1e668e0bce3b3a)
・左側はアイコンのみ表示されます。<br>
・右側は非表示になります。<br>

- レスポンシブ(スマホ用)
[![Image from Gyazo](https://i.gyazo.com/ab6812171a3e29bd66d1fe6ac4cc0b70.png)](https://gyazo.com/ab6812171a3e29bd66d1fe6ac4cc0b70)
・左側は非表示になり、フッターにアイコンが表示されます。<br>
・ヘッダーの右側がハンバーガーメニューに変わります。<br>

### ユーザー管理機能
- ユーザーの新規登録
[![Image from Gyazo](https://i.gyazo.com/ac5161941ce97eba5ee3fa2b0f8e1d5d.gif)](https://gyazo.com/ac5161941ce97eba5ee3fa2b0f8e1d5d)
・プロフィール画像、ニックネーム、自己紹介、メールアドレス、パスワード、確認用パスワードを設定することができます。<br>
・プロフィール画像と自己紹介は任意設定項目です。プロフィール画像が設定されていない場合は、ダミーのアイコンが表示されます。<br>

- ログイン
[![Image from Gyazo](https://i.gyazo.com/119771191b3ac024bf217b9467b9f980.gif)](https://gyazo.com/119771191b3ac024bf217b9467b9f980)
・ログアウト状態でヘッダー右の「ログイン」をクリックし、メールアドレスとパスワードを入力すればログインすることができます。<br>
[![Image from Gyazo](https://i.gyazo.com/3d04173ed88d8d3f35fd4952ef4b6540.gif)](https://gyazo.com/3d04173ed88d8d3f35fd4952ef4b6540)
・ログアウト状態でヘッダー右の「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインすることができます。<br>

- ログアウト
[![Image from Gyazo](https://i.gyazo.com/1834a26448ab1c4c8e08aac02566b788.gif)](https://gyazo.com/1834a26448ab1c4c8e08aac02566b788)
・ログイン状態でヘッダー右の「ログアウト」をクリックするとモーダルが出現します。モーダル内の「ログアウト」をクリックするとログアウトすることができます。<br>

- ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/9da7cb0776dcfcaa5e5cd5292cfeeb6f.gif)](https://gyazo.com/9da7cb0776dcfcaa5e5cd5292cfeeb6f)
・ヘッダーの「ユーザー名」もしくは左メニューの「プロフィール」をクリックすれば、自身のユーザー詳細ページに遷移することができます。<br>
・上部には、本人のみ「アカウント編集」、本人以外に「フォロー」もしくは「フォロー中」が表示されます。<br>
・各ユーザーの投稿が時系列順に表示されます。<br>

- アカウント編集
[![Image from Gyazo](https://i.gyazo.com/754c515092732f75ff2cc79d1ab3501c.gif)](https://gyazo.com/754c515092732f75ff2cc79d1ab3501c)
・自身のユーザー詳細ページの上部にある「アカウント編集」をクリックすれば、アカウント編集ページに遷移します。<br>
・プロフィール画像、ニックネーム、自己紹介、メールアドレスの変更をすることができます。<br>

### グループ管理機能
- グループ作成
[![Image from Gyazo](https://i.gyazo.com/f06820d2183047b56ae14e1c98ad95df.gif)](https://gyazo.com/f06820d2183047b56ae14e1c98ad95df)
・左メニューの「グループを作る」をクリックするとグループ作成ページに遷移します。<br>
・グループ名は70文字以内、グループの紹介文は200文字以内で入力し、「グループを作る」をクリックすればグループが作成できます。(日本語もしくはアルファベットどちらを用いても同じぐらいの文量になるように、大文字は2文字、半角英数字・記号・改行は1文字カウントに設定)<br>
・グループの紹介文は任意設定項目です。<br>

- グループ一覧ページ
[![Image from Gyazo](https://i.gyazo.com/7a4c3c516cbb460900399dbf0dfce5a1.gif)](https://gyazo.com/7a4c3c516cbb460900399dbf0dfce5a1)
・左側の「探す」をクリックするとグループ一覧ページに遷移します。<br>
・参加人数の多いグループから順に上から表示されます。<br>
・右側には最新の20個のグループが表示されます。<br>

- グループ参加
[![Image from Gyazo](https://i.gyazo.com/13ea612eaf4286367e80de9196c7735f.gif)](https://gyazo.com/13ea612eaf4286367e80de9196c7735f)
・「参加」をクリックするとグループに参加することができ、グループのチャットページに遷移します。<br>

- グループ退会
[![Image from Gyazo](https://i.gyazo.com/667a9e3482309a5e174d396a7fbf03b5.gif)](https://gyazo.com/667a9e3482309a5e174d396a7fbf03b5)
・グループのチャットページにある「退会する」をクリックするとモーダルが出現します。モーダル内の「退会する」をクリックするとグループを退会することができます。<br>

- グループ詳細ページ
[![Image from Gyazo](https://i.gyazo.com/9fa003953ac1aeb1dbf561fc978f545b.gif)](https://gyazo.com/9fa003953ac1aeb1dbf561fc978f545b)
・グループの作成者には「グループを編集」と「グループを削除」が表示されます。<br>
・「◯参加中」をクリックすれば、そのグループに参加しているユーザーの一覧ページに遷移します。<br>
・グループでの投稿が時系列で表示されます。<br>

- グループ編集
[![Image from Gyazo](https://i.gyazo.com/25e81e73dba992c58345ee8e9a9621a2.gif)](https://gyazo.com/25e81e73dba992c58345ee8e9a9621a2)
・グループの作成者のみ編集することができます。<br>
・グループ詳細ページの「グループを編集」をクリックすると編集ページに遷移します。グループの紹介文のみ編集することができます。<br>

- グループ削除
[![Image from Gyazo](https://i.gyazo.com/0998af6e4d04527cb6d0ea3cae725302.gif)](https://gyazo.com/0998af6e4d04527cb6d0ea3cae725302)
・グループの作成者のみ削除することができます。<br>
・グループ詳細ページの「グループを削除」をクリックするとモーダルが出現します。モーダル内の「グループを削除」をクリックするとグループを削除することができます。<br>

### 検索機能
- グループ検索
[![Image from Gyazo](https://i.gyazo.com/ff252c627fd2aee323b624f10cea3f9b.gif)](https://gyazo.com/ff252c627fd2aee323b624f10cea3f9b)
・トップページの右側もしくはグループ一覧ページの上部の検索窓にキーワードを入力したら、該当するグループを見つけることができます。<br>

- ユーザー検索
[![Image from Gyazo](https://i.gyazo.com/700c134fa858e573eecd14dc55aa0be4.gif)](https://gyazo.com/700c134fa858e573eecd14dc55aa0be4)
・グループ一覧ページの「ユーザー」をクリックするとユーザー検索ページに遷移します。<br>

### ツイート投稿機能
- ツイート投稿
[![Image from Gyazo](https://i.gyazo.com/4c19a3e72538a872555638d85059ed2e.gif)](https://gyazo.com/4c19a3e72538a872555638d85059ed2e)
・グループのチャットページ上部の「ツイート」をクリックすると、ツイート投稿ページに遷移します。<br>
・400字以内で入力すると投稿することができます。(日本語もしくはアルファベットどちらを用いても同じぐらいの文量になるように、大文字は2文字、半角英数字・記号・改行は1文字カウントに設定)<br>
・写真を1枚付けて投稿することができます。<br>
・テキストか写真どちらかがないと投稿することができません。<br>

- ツイート詳細ページ
[![Image from Gyazo](https://i.gyazo.com/1a8c1e2df4f0828a268df1a69d069bd7.gif)](https://gyazo.com/1a8c1e2df4f0828a268df1a69d069bd7)
・チャットページで投稿したツイートの投稿内容をクリックするとツイート詳細ページに遷移します。<br>
・投稿者本人には「編集する」と「削除する」が表示されます。<br>

- ツイート編集
[![Image from Gyazo](https://i.gyazo.com/80ae38ad19d2e68f83ecb28e8318e911.gif)](https://gyazo.com/80ae38ad19d2e68f83ecb28e8318e911)
・投稿者本人のみ編集することができます。<br>
・ツイート詳細ページの「編集する」をクリックすると編集ページに遷移します。テキストと写真の両方を編集することができます。<br>

- ツイート削除
[![Image from Gyazo](https://i.gyazo.com/a9d079e2d74a0c88ee24f64a48908acc.gif)](https://gyazo.com/a9d079e2d74a0c88ee24f64a48908acc)
・投稿者本人のみ削除することができます。<br>
・ツイート詳細ページの「削除する」をクリックするとモーダルが出現します。モーダル内の「削除する」をクリックするとツイートを削除することができます。<br>

### いいね機能
- いいねを押す
[![Image from Gyazo](https://i.gyazo.com/e50ebbaa7204350ecbbe0bf907f0af73.gif)](https://gyazo.com/e50ebbaa7204350ecbbe0bf907f0af73)
・ツイートの下部のハートをクリックするとツイートに対していいねを押すことができます。<br>
・いいねを押したツイートに対して、もう一度ハートをクリックするといいねを解除することができます。<br>

- いいねを押したユーザー一覧
[![Image from Gyazo](https://i.gyazo.com/43a9e92284bcfe32842ff8e1700395b0.gif)](https://gyazo.com/43a9e92284bcfe32842ff8e1700395b0)
・ツイート詳細ページの「◯いいね」をクリックすると、そのツイートにいいねを押したユーザー一覧ページに遷移します。<br>

### フォロー・フォロワー機能
- フォローを押す
[![Image from Gyazo](https://i.gyazo.com/d90489b81bc0f460a30e6206181abd0a.gif)](https://gyazo.com/d90489b81bc0f460a30e6206181abd0a)
・他のユーザーの詳細ページに表示されている「フォロー」をクリックすれば、フォローすることができます。<br>
・「フォロー中」にカーソルを合わせると「フォロー解除」と表示されます。それをクリックするとフォローを解除することができます。<br>
・フォローしたユーザーの投稿はホームに表示されます。<br>

- フォロー・フォロワーの一覧
[![Image from Gyazo](https://i.gyazo.com/9964a162c837553e917b60e3ed2d6991.gif)](https://gyazo.com/9964a162c837553e917b60e3ed2d6991)
・ユーザー詳細ページにフォロー中とフォロワーの人数が表示されます。<br>
・「◯フォロー中」をクリックするとフォロー中ユーザー一覧ページに遷移します。<br>
・「◯フォロワー」をクリックするとフォロワーユーザー一覧ページに遷移します。<br>

<br>

# 工夫したポイント
- ユーザーが「グループ」を意識して利用できるようにする
  - 投稿できる場を参加しているグループ内だけにすることで、集団への所属意識を高められるようにしました。<br>
  - 各ツイートやright-barにグループ名を表示することで、「どのグループでの投稿？」「どんなグループ？」とグループに関心を持ちやすいようにしました。<br>
  - right-barにグループ検索ボタンを設置し、気になるグループをすぐに見つけられるようにしました。<br>

<br>

# 使用技術(開発環境)
## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML, CSS, JavaScript, jQuery

## データベース
MySQL, SequelPro, MariaDB

## インフラ
AWS(EC2), Capistrano

## Webサーバ(本番環境)
Nginx

## アプリケーションサーバ(本番環境)
Unicorn

## テスト
RSpec

## ソース管理
GitHub, GitHubDesktop

## エディタ
VSCode

<br>

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
