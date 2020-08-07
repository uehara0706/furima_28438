# README

# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ----------- | ------| ------------ |
| nickname   | string | null: false |
| 姓          | string | null: false |
| 名          | string | null: false | 
| 姓（フリガナ）| string | null: false |
| 名（フリガナ）| string | null: false |
| birth day   | integer| null: false |
| email       | string | null: false |
| password    | string | null: false |

 
 
 
 
 
  Association

 has_many :items
 has_one :address
 

## items テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| price           | integer| null: false |
| exhibitorname   | string | null: false |
| cate            | string | null: false |
| state           | string | null: false |
| images          | image  | null: false |
| explain         | text   | null: false |
| burden          | string | null: false |
| Ship-From       | string | null: false |
| Shipping-days   | integer| null: false 
  Association

belongs_to :user

## address テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| adsress         | text   | null: false |


bbelongs_to :user















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
