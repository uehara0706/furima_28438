# README

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

  Association

 has_many :items
 has_a :purchace

## items テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| itemname        | string | null: false |
| price           | integer| null: false |
| exhibitorname   | string | null: false |
| cate            | string | null: false |

  Association

has_a :purchace
belongs_to :user


## purchace テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| purchacername    | references | null: false, foreign_key: true |
| shipping address | references | null: false, foreign_key: true |


  Association

 belongs_to :user
 belong_to :item 
















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
