# README

# テーブル設計

## users テーブル

| Column       | Type   | Options     |
| ------------ | ------| ------------ |
| nickname     | string | null: false |
| Last Name    | string | null: false |
| First Name   | string | null: false | 
| Last Name-f  | string | null: false |
| First Name-f | string | null: false |
| birth day   | date   | null: false |
| email       | string | null: false |
| password    | string | null: false |

   Association

 has_many :items
 has_one :purchace
 

## items テーブル

| Column          | Type    | Options     |
| --------------- | ------  | ----------- |
| price           | integer | null: false |
| exhibitorname   | string  | null: false |
| cate            | integer | null: false |
| state           | integer | null: false |
| images          | image   | null: false |
| explain         | text    | null: false |
| burden          | integer | null: false |
| Ship-From       | integer | null: false |
| Shipping-days   | integer | null: false 
  
  Association

belongs_to :user


## purchace テーブル 

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| purchacername    | references | null: false, foreign_key: true |
| shipping address | references | null: false, foreign_key: true |
| adsress          | text       | null: false, foreign_key: ture |          |

Association

belongs_to :user




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
