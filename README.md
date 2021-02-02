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

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| log    | references | null: false, foreign_key: true |

### Association
--belongs_to :user
--belongs_to :logs

## logs テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| title      | string     | null: false                    |
| weight_kg  | integer    | null: false                    |
| weight_lb  | integer    | null: false                    |
| rep        | integer    | null: false                    |
| set_number | integer    | null: false                    |
| day_id     | integer    | null: false                    |

### Association
--belongs_to :user
--has_many   :comments
