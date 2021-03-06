# README

# テーブル設計

## users テーブル

| Column       | Type   | Options     |
| ------------ | ------| ------------ |
| nickname     | string | null: false |
| last_name    | string | null: false |
| first_name   | string | null: false | 
| last_name-f  | string | null: false |
| first_name-f | string | null: false |
| birth_day    | date   | null: false  |
| email        | string | null: false  |
| password     | string | null: false  |

   Association

 has_many :items
 has_one :purchase

## items テーブル

| Column          | Type    | Options                        |
| --------------- | ------  | ------------------------------ |
| name            | string  | null: false                    |
| price           | integer | null: false                    |
| cate            | integer | null: false                    |
| state           | integer | null: false                    |
| images          | text    | null: false                    |
| explain         | text    | null: false                    |
| burden          | integer | null: false, foreign_key: true |
| ship_from       | integer | null: false, foreign_key: true |
| Shipping_days   | integer | null: false, foreign_key: true |
| user_id         | integer | null: false, foreign_key: true | 
  Association

belongs_to :user
has_one :purchase
## address テーブル

| Column           | Type    | Options     |
| ---------------- | ------  | ----------  |
| municipalities   | string  | null: false |
| street_number    | string  | null: false |
| building_number  | string  | null: true  |
| telephone_number | string  | null: false |
| zip_code         | string  | null: false |
| province         | integer | null: false |
Association
belongs_to :user
belongs_to :item
belongs_to :purchase

## purchase テーブル


| Column  | Type    | Options    |
| ------- | ------- | ---------- |
| user_id | integer | null: false|
| item_id | integer | null: false|

belongs_to :user
belongs_to :item
has_one :address



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
