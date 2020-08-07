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
| birth_day   | date   | null: false |
| email       | string | null: false |
| password    | string | null: false |

   Association

 has_many :items
 has_one :addless
 has_one :purchace

## items テーブル

| Column          | Type    | Options                        |
| --------------- | ------  | ------------------------------ |
| price           | integer | null: false                    |
| exhibitorname   | string  | null: false                    |
| cate            | integer | null: false                    |
| state           | integer | null: false                    |
| images          | image   | null: false                    |
| explain         | text    | null: false                    |
| burden          | integer | null: false, foreign_key: true |
| ship-from       | integer | null: false, foreign_key: true |
| Shipping-days   | integer | null: false, foreign_key: true |
| user-id         | string | null: false, foreign_key: true  | 
  Association

belongs_to :user
has_one :addless
has_one :purchace
## addless テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------  |
| municipalities  | string | null: false |
| street_number   | string | null: false |
| building_number | strinf | null: ture  |

Association
belongs_to :user
belongs_to :item

## purchace テーブル


| Column  | Type   | Options    |
| ------- | ------ | ---------- |
| user_id | string | null: false|
| item_id | string | null: false|

belongs_to :user
belongs_to :item



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
