# Fitlog
 
<img width="1439" alt="top" src="https://user-images.githubusercontent.com/70187032/108749978-d3d43f00-7583-11eb-84c9-0622cda27077.png">

Fitlogは、世界中どこにいても筋トレを記録投稿できるアプリです！マイページ機能から自分の記録を確認したり、皆の投稿を見てコメントしたりできます。

https://fitlog-33471.herokuapp.com/

# テストアカウント

メールアドレス：mimi@dot.com

パスワード: mmmmmm

# デモ
  
![Untitled](https://user-images.githubusercontent.com/70187032/108463437-bb350200-72c1-11eb-94bd-c33637f3c4fe.gif)
 
![Untitled2](https://user-images.githubusercontent.com/70187032/108463646-1cf56c00-72c2-11eb-8667-28037f4f32db.gif)

# Features
 
海外（アメリカ）のジムでトレーニングする時にも困らないように、キロからパウンドに変換、保存できる。
ログイン機能をつけ、マイページから、自分の投稿一覧を確認できる
ライブラリ機能で、どこでもフォームの確認がすぐにできる。
 
# Usage

トップページからログイン、または新規登録し、投稿をクリック→
自分のトレーニング内容が投稿できる
 
# データベース設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| gender             | integer | null: false |
| profile            | text    | ----------- |

### Association
--has_many :comments
--has_many :logs

## comments テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| log                | references | null: false, foreign_key: true |

### Association
--belongs_to :user
--belongs_to :log

## training テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| log                   | references | null: false, foreign_key: true |
| weight_kg             | integer    | null: false                    |
| weight_lb             | integer    | null: false                    |
| rep                   | integer    | null: false                    |
| set_number            | integer    | null: false                    |
| training              | string     | null: false                    |

### Association
--belongs_to :log



## log テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| title      | string     | null: false                    |
| day_id     | integer    | null: false                    |

### Association
--belongs_to :user
--has_many :comments
--has_many :trainings
