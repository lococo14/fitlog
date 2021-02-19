# Fitlog
 
Fitlogは、筋トレを記録し投稿できるアプリです。
 

# DEMO
 

 
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
