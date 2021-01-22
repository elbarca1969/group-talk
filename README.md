# アプリケーション名
**GroupTalk**
<br>
ユーザー同士のコミュニケーションを深めるために、グループ内で同じ話題を共有することができるアプリケーションという意味です。

<br>

# アプリケーション概要
ユーザー登録もしくは自身のアカウントにログインすると、グループの作成、共通の関心を持つグループへの参加、グループ内での投稿、他のユーザーをフォローすることができます。
グループ作成ページで、グループ名を35文字以内で入力するとグループを作成することができます。
グループ一覧ページでは作成されたグループを見ることができ、「参加」ボタンを押すことで自由に参加することができます。
グループ検索機能を活用すると、キーワードを含んだグループを簡単に見つけることができます。
グループのチャットページの上部からツイート投稿ページに移り、200文字以内で入力するか写真を添付し、「ツイート」ボタンを押すことで投稿が完了します。
各グループの「チャットページ」では、投稿が時系列順に表示され、各ユーザーの近況や感じたことがグループ内で共有されます。
他のユーザーをフォローすることができ、同じ関心や趣向を持つユーザー同士の繋がりを深めることができます。
「ホーム」では、フォローしたユーザーの投稿が時系列順で表示されます。

<br>

# 本番環境
アプリケーションURL　https://group-talk.herokuapp.com/
<br>
ログイン情報
- 「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインし、アプリケーションを閲覧することができます。

もしくは「ログイン」をクリックし、以下の項目を入力すると、テスト用アカウントでの閲覧も可能です。
- テスト用アカウント
  - メールアドレス：111@111
  - パスワード：111111

<br>

# 利用方法
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
  - ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- グループの参加・退会の流れは以下の通りです。
  - グループ一覧ページもしくはグループ詳細ページの「参加」をクリックでグループに参加
  - チャットページ上部の「退会する」をクリック→モーダルが出現→「退会する」をクリックでグループを退会
- ツイート投稿までの流れは以下の通りです。
  - ログイン→「ホーム」ページから左下の参加グループのいずれかのグループ名をクリック→チャットページ上部の「ツイート」をクリック→ツイート投稿画面でテキストを入力もしくは写真を添付→「ツイート」をクリックで投稿が完了
  - (ツイート投稿後は次の流れでツイートの削除をお願いします)チャットページで投稿したツイートの投稿内容をクリックしツイート詳細ページに遷移→上部の「削除する」をクリック→モーダルが出現→「削除する」をクリックでツイートを削除
- フォローの流れは以下の通りです。
  - ユーザー詳細ページもしくは各ページのユーザー一覧に遷移→「フォロー」をクリックで他のユーザーをフォローできる
- 確認後、ログアウト処理をお願いします。

<br>

# 目指した課題解決
共通の関心を持ったユーザー同士の繋がりを深め、ユーザーが安心して情報の発信・収集ができるアプリケーションを目指しました。Webサービス(主にSNS)での誹謗中傷が現代社会の大きな課題です。自分の価値観を他ユーザーに押し付けてしまい、ユーザー同士のコミュニケーションが上手く取れていないため誹謗中傷が起こるのではないかと考えました。そこから以下の課題を洗い出し、それを解決するための仮説を立てました。
- 課題
  - SNS上は架空の場所で唐突に会話が始まる
  - 様々な情報がネット上に飛び交い、正確な情報を捉えにくい

これらの課題を解決するために以下の仮説を立てました。
- 課題解決のための仮説
  - 共通の関心を持ったユーザーが集まるグループを自由に作成することができ、そのグループ内で共通の話題をテーマに価値観を共有することで、ユーザー同士のコミュニケーションがより深まるだろう。
  - グループの参加人数を表示することで、それが信頼度になり、ユーザーが安心してグループに参加し情報の発信・収集をすることができるだろう。

<br>

# 洗い出した要件
| 機能                  | 目的                                                                     |
|----------------------|--------------------------------------------------------------------------|
| ユーザー管理機能        | ユーザーの新規登録、ログイン・ログアウトをできるようにするため                     |
| グループ管理機能        | 共通の関心を持ったユーザー同士が同じグループで思いや価値観を共有できるようにするため   |
| グループ検索機能        | キーワードを元に関心のあるグループを簡単に見つけられるようにするため                |
| ツイート投稿機能        | グループ内で自分の思いを投稿することで、他のユーザーと価値観を共有できるようにするため |
| いいね機能             | 投稿に対していいねを押してもらうことで、ユーザーの自己肯定感が高まるようにするため     |
| フォロー・フォロワー機能 | 共通の関心を持ったユーザーを見つけフォローすることで、ユーザー同士の繋がりを深めるため  |

<br>

# 実装した機能についてのGIFと説明
### トップページ
- ホーム
[![Image from Gyazo](https://i.gyazo.com/b02a4b52f8b68b88ca9b71ef294014f4.png)](https://gyazo.com/b02a4b52f8b68b88ca9b71ef294014f4)
・左側には、ホーム・プロフィール(自身のユーザー詳細ページ)・フレンド(フォロー中ユーザー一覧ページ)・グループを見る(グループ一覧ページ)・グループを作る(グループ作成ページ)・あなたのグループ(参加中グループ一覧ページ)の遷移ボタンが表示されています。<br>
・左側下部には、参加中グループリストが表示されており、グループ名をクリックするとそのグループのチャットページに遷移します。<br>
・メイン部分には、フォローしたユーザーの投稿が時系列順で表示されます。<br>
・右側には、参加人数が多いグループが上から表示されます。グループ名をクリックするとそのグループの詳細ページに遷移します。<br>

- チャットページ
[![Image from Gyazo](https://i.gyazo.com/4076a66dfd677a3ce02f11300bda2571.gif)](https://gyazo.com/4076a66dfd677a3ce02f11300bda2571)
・左側下部の参加グループリストのグループ名をクリックするか、グループ一覧ページの「参加」もしくは「参加中」をクリックするとそのグループのチャットページに遷移します。<br>
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
・プロフィール画像と自己紹介は任意設定項目です。プロフィール画像が設定されていない場合は、人物アイコンが表示されます。<br>
・メールアドレスは他のユーザーが使用しているものは使用できません。また「@」がないと登録できません。<br>
・パスワードは半角英数字6文字以上で入力します。確認用パスワードと一致しないと登録できません。<br>

- ログイン
[![Image from Gyazo](https://i.gyazo.com/548db8595bdc6b991492680cc94ec7ce.gif)](https://gyazo.com/548db8595bdc6b991492680cc94ec7ce)
・ログアウト状態でヘッダー右の「ログイン」をクリックし、メールアドレスとパスワードを入力すればログインすることができます。<br>
[![Image from Gyazo](https://i.gyazo.com/3093998796d74e3e5296c774d5100763.gif)](https://gyazo.com/3093998796d74e3e5296c774d5100763)
・ログアウト状態でヘッダー右の「ゲストログイン(閲覧用)」をクリックすれば、メールアドレスとパスワードの入力なしでゲストユーザーとしてログインすることができます。<br>

- ログアウト
[![Image from Gyazo](https://i.gyazo.com/4560e678cd7ba190959868bf0c1ca888.gif)](https://gyazo.com/4560e678cd7ba190959868bf0c1ca888)
・ログイン状態でヘッダー右の「ログアウト」をクリックするとモーダルが出現します。モーダル内の「ログアウト」をクリックするとログアウトすることができます。<br>

- ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/13037c2e9db87d2e1f4488c84f4c340e.gif)](https://gyazo.com/13037c2e9db87d2e1f4488c84f4c340e)
・ヘッダーの「ユーザー名」もしくは左メニューの「プロフィール」をクリックすれば、自身のユーザー詳細ページに遷移することができます。<br>
・グループの作成者やグループの参加者一覧などから他のユーザーの詳細ページに遷移することができます。<br>
・上部には、本人のみ「アカウント編集」、本人以外に「フォロー」もしくは「フォロー中」が表示されます。<br>
・「フォロー中・フォロワー・参加グループ・作成したグループ」一覧ページに遷移することができます。<br>
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
[![Image from Gyazo](https://i.gyazo.com/e00852b2a92a68303f886dcb27a4431b.gif)](https://gyazo.com/e00852b2a92a68303f886dcb27a4431b)
・ユーザー詳細ページの「◯オーナー」をクリックすると作成したグループ一覧ページに遷移します。<br>

- グループ一覧ページ
[![Image from Gyazo](https://i.gyazo.com/c0b803dd636605fddbd0bfe403182321.gif)](https://gyazo.com/c0b803dd636605fddbd0bfe403182321)
・左側の「グループを見る」をクリックするとグループ一覧ページに遷移します。<br>
・参加人数の多いグループから順に上から表示されます。<br>
・「参加」もしくは「参加中」をクリックするとグループのチャットページに遷移します。<br>
・「◯参加中」をクリックすれば、そのグループに参加しているユーザーの一覧ページに遷移します。<br>
・グループの作成者と作成日が表示されます。ユーザー名をクリックすれば作成者の詳細ページに遷移します。<br>
・右側には最新の20個のグループが表示されます。<br>

- グループ参加
[![Image from Gyazo](https://i.gyazo.com/df819bd2c3bc46e8955c0b6d5811a27c.gif)](https://gyazo.com/df819bd2c3bc46e8955c0b6d5811a27c)
・「参加」をクリックするとグループに参加することができ、グループのチャットページに遷移します。<br>
・ユーザー詳細ページの「◯参加中」をクリックすると参加中グループ一覧ページに遷移します。<br>

- グループ退会
[![Image from Gyazo](https://i.gyazo.com/9f70b24b05ba4c79c8099d82f3af7888.gif)](https://gyazo.com/9f70b24b05ba4c79c8099d82f3af7888)
・グループのチャットページにある「退会する」をクリックするとモーダルが出現します。モーダル内の「退会する」をクリックするとグループを退会することができます。<br>

- グループ詳細ページ
[![Image from Gyazo](https://i.gyazo.com/5bac885ed7ba2b29363c7341ba4b9a98.gif)](https://gyazo.com/5bac885ed7ba2b29363c7341ba4b9a98)
・グループの作成者には「グループを編集」と「グループを削除」が表示されます。<br>
・グループの紹介文を見ることができます。<br>
・「◯参加中」をクリックすれば、そのグループに参加しているユーザーの一覧ページに遷移します。<br>
・グループの作成者と作成日が表示されます。ユーザー名をクリックすれば作成者の詳細ページに遷移します。<br>
・グループでの投稿が時系列で表示されます。<br>

- グループ編集
[![Image from Gyazo](https://i.gyazo.com/cdccd79c507662545631c3a4beccaeda.gif)](https://gyazo.com/cdccd79c507662545631c3a4beccaeda)
・グループの作成者のみ編集することができます。<br>
・グループ詳細ページの「グループを編集」をクリックすると編集ページに遷移します。グループの紹介文のみ編集することができます。<br>

- グループ削除
[![Image from Gyazo](https://i.gyazo.com/e43161fbfa7b67c7083c54c6ed6dcdf1.gif)](https://gyazo.com/e43161fbfa7b67c7083c54c6ed6dcdf1)
・グループの作成者のみ削除することができます。<br>
・グループ詳細ページの「グループを削除」をクリックするとモーダルが出現します。モーダル内の「グループを削除」をクリックするとグループを削除することができます。<br>

### フォロー・フォロワー機能
- 他のユーザーをフォローすることができる。フォローを外すことができる
[![Image from Gyazo](https://i.gyazo.com/ea3cccfd265d969fa3587f6378605ea6.gif)](https://gyazo.com/ea3cccfd265d969fa3587f6378605ea6)
・「フォロー」ボタンをクリックするとフォローすることができます。<br>・フォローしたユーザーのツイートはトップページに表示されます。<br>・「フォロー中」ボタンをクリックするとフォローを外すことができます。

- フォロー・フォロワーの一覧
[![Image from Gyazo](https://i.gyazo.com/46eff1a91f1d5291cf4f6aaebacec06b.gif)](https://gyazo.com/46eff1a91f1d5291cf4f6aaebacec06b)
・ユーザー詳細ページにフォロー・フォロワーの人数が表示されます。<br>・フォロー・フォロワーの一覧を見ることができます。そこから他のユーザーの詳細ページに遷移することができます。

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