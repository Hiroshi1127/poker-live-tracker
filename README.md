# README

ライブポーカーでの戦績保存、
スタッツをはかるためのアプリ。

* version
Rails version: 5.-6
Ruby version: 2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# ユーザーから見た挙動
- ユーザー認証
  - サインアップ
  - ログイン
  - サインアウト
  - アカウント削除
- Tracker
  - vpip, pfr, 3Betを計測できる
    - トグルボタンプッシュ + 次のハンドへ　で計測
    - 人数は最大10人
    - 計測してる人に対して
      - 位置の入れ替え
      - 削除
      - 追加
  - 結果の保存
    - 開始と最終チップ量
    - 通貨
    - 稼働時間
    - 場所
    - 最終スタッツ
  - 結果の確認
    - 収支グラフ
    - 結果一覧
      - ソート機能
        - 通貨
        - 場所
        - 収支
      - 詳細(保存の内容)
-login関係挙動
  - Home loginしている時はuserpageへ
  - login後userpageへ


# テーブル
- User
  - user_id
  - name
  - email
- Resolt
  - resolt_id
  - user_id
  - start_at
  - finish_at
  - start_chips
  - finish_chips
  - place
  - stats_id
- Stats
  - stats_id
  - resolt_id
  - stats_data