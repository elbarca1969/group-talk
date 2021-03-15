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

# 実装した機能についてのGIFと説明
### トップページ
- ホーム
[![Image from Gyazo](https://i.gyazo.com/b02a4b52f8b68b88ca9b71ef294014f4.png)](https://gyazo.com/b02a4b52f8b68b88ca9b71ef294014f4)
・左側下部には、参加中のグループが表示されています。<br>
・メイン部分には、フォローしたユーザーの投稿が時系列順で表示されます。<br>
・右側には、参加人数が多いTOP20のグループが上から表示されています。<br>

- チャットページ
[![Image from Gyazo](https://i.gyazo.com/4076a66dfd677a3ce02f11300bda2571.gif)](https://gyazo.com/4076a66dfd677a3ce02f11300bda2571)
・左側下部の参加グループリストのグループ名をクリックするとそのグループのチャットページに遷移します。<br>
・メイン部分には、そのグループ内で投稿されたツイートが時系列順に表示されます。<br>

- レスポンシブ(タブレット用)
[![Image from Gyazo](https://i.gyazo.com/db7ece14dcf963de4e6c4d3e02e55769.png)](https://gyazo.com/db7ece14dcf963de4e6c4d3e02e55769)
・左側はアイコンのみ表示されます。<br>
・右側は非表示になります。<br>

- レスポンシブ(スマホ用)
[![Image from Gyazo](https://i.gyazo.com/8ce012ae46a4563c872eafbab2721452.png)](https://gyazo.com/8ce012ae46a4563c872eafbab2721452)
・左側は非表示になり、フッターにアイコンが表示されます。<br>
・ヘッダーの右側がハンバーガーメニューに変わります。<br>

### ユーザー管理機能
- ユーザーの新規登録
[![Image from Gyazo](https://i.gyazo.com/ac5161941ce97eba5ee3fa2b0f8e1d5d.gif)](https://gyazo.com/ac5161941ce97eba5ee3fa2b0f8e1d5d)
・プロフィール画像、ニックネーム、自己紹介、メールアドレス、パスワード、確認用パスワードを設定することができます。<br>
・プロフィール画像と自己紹介は任意設定項目です。プロフィール画像が設定されていない場合は、ダミーのアイコンが表示されます。<br>

- ログイン
[![Image from Gyazo](https://i.gyazo.com/548db8595bdc6b991492680cc94ec7ce.gif)](https://gyazo.com/548db8595bdc6b991492680cc94ec7ce)
・ログアウト状態でヘッダー右の「ログイン」をクリックし、メールアドレスとパスワードを入力すればログインすることができます。<br>
[![Image from Gyazo](https://i.gyazo.com/3093998796d74e3e5296c774d5100763.gif)](https://gyazo.com/3093998796d74e3e5296c774d5100763)
・ログアウト状態でヘッダー右の「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインすることができます。<br>

- ログアウト
[![Image from Gyazo](https://i.gyazo.com/4560e678cd7ba190959868bf0c1ca888.gif)](https://gyazo.com/4560e678cd7ba190959868bf0c1ca888)
・ログイン状態でヘッダー右の「ログアウト」をクリックするとモーダルが出現します。モーダル内の「ログアウト」をクリックするとログアウトすることができます。<br>

- ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/13037c2e9db87d2e1f4488c84f4c340e.gif)](https://gyazo.com/13037c2e9db87d2e1f4488c84f4c340e)
・ヘッダーの「ユーザー名」もしくは左メニューの「プロフィール」をクリックすれば、自身のユーザー詳細ページに遷移することができます。<br>
・上部には、本人のみ「アカウント編集」、本人以外に「フォロー」もしくは「フォロー中」が表示されます。<br>
・各ユーザーの投稿が時系列順に表示されます。<br>

- アカウント編集
[![Image from Gyazo](https://i.gyazo.com/c915dc70710af6cafff2011d51391abf.gif)](https://gyazo.com/c915dc70710af6cafff2011d51391abf)
・自身のユーザー詳細ページの上部にある「アカウント編集」をクリックすれば、アカウント編集ページに遷移します。<br>
・プロフィール画像、ニックネーム、自己紹介、メールアドレスの変更をすることができます。<br>

### グループ管理機能
- グループ作成
[![Image from Gyazo](https://i.gyazo.com/0f9d7303d6ec265d16bab752c3231c51.gif)](https://gyazo.com/0f9d7303d6ec265d16bab752c3231c51)
・左メニューの「グループを作る」をクリックするとグループ作成ページに遷移します。<br>
・グループ名は70文字以内、グループの紹介文は200文字以内で入力し、「グループを作る」をクリックすればグループが作成できます。(日本語もしくはアルファベットどちらを用いても同じぐらいの文量になるように、大文字は2文字、半角英数字・記号・改行は1文字カウントに設定)<br>
・グループの紹介文は任意設定項目です。<br>

- グループ一覧ページ
[![Image from Gyazo](https://i.gyazo.com/c0b803dd636605fddbd0bfe403182321.gif)](https://gyazo.com/c0b803dd636605fddbd0bfe403182321)
・左側の「探す」をクリックするとグループ一覧ページに遷移します。<br>
・参加人数の多いグループから順に上から表示されます。<br>
・右側には最新の20個のグループが表示されます。<br>

- グループ参加
[![Image from Gyazo](https://i.gyazo.com/df819bd2c3bc46e8955c0b6d5811a27c.gif)](https://gyazo.com/df819bd2c3bc46e8955c0b6d5811a27c)
・「参加」をクリックするとグループに参加することができ、グループのチャットページに遷移します。<br>

- グループ退会
[![Image from Gyazo](https://i.gyazo.com/9f70b24b05ba4c79c8099d82f3af7888.gif)](https://gyazo.com/9f70b24b05ba4c79c8099d82f3af7888)
・グループのチャットページにある「退会する」をクリックするとモーダルが出現します。モーダル内の「退会する」をクリックするとグループを退会することができます。<br>

- グループ詳細ページ
[![Image from Gyazo](https://i.gyazo.com/5bac885ed7ba2b29363c7341ba4b9a98.gif)](https://gyazo.com/5bac885ed7ba2b29363c7341ba4b9a98)
・グループの作成者には「グループを編集」と「グループを削除」が表示されます。<br>
・「◯参加中」をクリックすれば、そのグループに参加しているユーザーの一覧ページに遷移します。<br>
・グループでの投稿が時系列で表示されます。<br>

- グループ編集
[![Image from Gyazo](https://i.gyazo.com/cdccd79c507662545631c3a4beccaeda.gif)](https://gyazo.com/cdccd79c507662545631c3a4beccaeda)
・グループの作成者のみ編集することができます。<br>
・グループ詳細ページの「グループを編集」をクリックすると編集ページに遷移します。グループの紹介文のみ編集することができます。<br>

- グループ削除
[![Image from Gyazo](https://i.gyazo.com/e43161fbfa7b67c7083c54c6ed6dcdf1.gif)](https://gyazo.com/e43161fbfa7b67c7083c54c6ed6dcdf1)
・グループの作成者のみ削除することができます。<br>
・グループ詳細ページの「グループを削除」をクリックするとモーダルが出現します。モーダル内の「グループを削除」をクリックするとグループを削除することができます。<br>

### グループ検索機能
- グループ検索
[![Image from Gyazo](https://i.gyazo.com/32aca28632b0f1abf5198faac8bf1668.gif)](https://gyazo.com/32aca28632b0f1abf5198faac8bf1668)
・トップページの右側もしくはグループ一覧ページの上部の検索窓にキーワードを入力したら、該当するグループを見つけることができます。<br>

### ツイート投稿機能
- ツイート投稿
[![Image from Gyazo](https://i.gyazo.com/f2fbcf9b7ae043504704d4c46c8135db.gif)](https://gyazo.com/f2fbcf9b7ae043504704d4c46c8135db)
・グループのチャットページ上部の「ツイート」をクリックすると、ツイート投稿ページに遷移します。<br>
・400字以内で入力すると投稿することができます。(日本語もしくはアルファベットどちらを用いても同じぐらいの文量になるように、大文字は2文字、半角英数字・記号・改行は1文字カウントに設定)<br>
・写真を1枚付けて投稿することができます。<br>
・テキストか写真どちらかがないと投稿することができません。<br>

- ツイート詳細ページ
[![Image from Gyazo](https://i.gyazo.com/a26710c78f7a34f96a8c74f306832375.gif)](https://gyazo.com/a26710c78f7a34f96a8c74f306832375)
・チャットページで投稿したツイートの投稿内容をクリックするとツイート詳細ページに遷移します。<br>
・投稿者本人には「編集する」と「削除する」が表示されます。<br>

- ツイート編集
[![Image from Gyazo](https://i.gyazo.com/aab0a0eb9539bd1fb51b5b3d9b5bdece.gif)](https://gyazo.com/aab0a0eb9539bd1fb51b5b3d9b5bdece)
・投稿者本人のみ編集することができます。<br>
・ツイート詳細ページの「編集する」をクリックすると編集ページに遷移します。テキストと写真の両方を編集することができます。<br>

- ツイート削除
[![Image from Gyazo](https://i.gyazo.com/d24d464b5c2255971f89281a0141502e.gif)](https://gyazo.com/d24d464b5c2255971f89281a0141502e)
・投稿者本人のみ削除することができます。<br>
・ツイート詳細ページの「削除する」をクリックするとモーダルが出現します。モーダル内の「削除する」をクリックするとツイートを削除することができます。<br>

### いいね機能
- いいねを押す
[![Image from Gyazo](https://i.gyazo.com/eaa5f923cc12be5281f323c81588714d.gif)](https://gyazo.com/eaa5f923cc12be5281f323c81588714d)
・ツイートの下部に灰色のハートが表示されます。それをクリックすると赤色に変わり、ツイートに対していいねを押すことができます。<br>
・いいねを押したツイートに対して、もう一度ハートをクリックするといいねを解除することができます。<br>
・いいねの数がハートの横に表示されます。<br>
・一つのツイートに対して一度だけいいねを押すことができます。<br>

- いいねを押したユーザー一覧
[![Image from Gyazo](https://i.gyazo.com/7a7e3a1a77ace380a97a8c021ac35311.gif)](https://gyazo.com/7a7e3a1a77ace380a97a8c021ac35311)
・ツイート詳細ページの「◯いいね」をクリックすると、そのツイートにいいねを押したユーザー一覧ページに遷移します。<br>

### フォロー・フォロワー機能
- フォローする
[![Image from Gyazo](https://i.gyazo.com/6d62b70082707fa1c7283edee802c5f4.gif)](https://gyazo.com/6d62b70082707fa1c7283edee802c5f4)
・ユーザー詳細ページや各ページのユーザー一覧で、「フォロー」をクリックするとそのユーザーをフォローすることができます。<br>
・表示が「フォロー」から「フォロー中」に変わります。<br>
・フォローしたユーザーの投稿はホームに表示されます。<br>

- フォローを解除
[![Image from Gyazo](https://i.gyazo.com/007fe0cb7008539412eb12b01c98b63c.gif)](https://gyazo.com/007fe0cb7008539412eb12b01c98b63c)
・「フォロー中」にカーソルを合わせると「フォロー解除」と表示されます。それをクリックするとそのユーザーのフォローを解除することができます。<br>

- フォロー・フォロワーの一覧
[![Image from Gyazo](https://i.gyazo.com/286f37642c04a58e48c177a030b685f7.gif)](https://gyazo.com/286f37642c04a58e48c177a030b685f7)
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