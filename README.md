# README

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

## messagesテーブル

|Colum|Type|Options|
|-----|----|-------|
|body|text||
|image|string|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :user
- has_many :groups, through: :groups_users


## usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :messages

## groupsテーブル

|Colum|Type|Options|
|-----|----|-------|
|id|integer|
|name|string|

### Asociation
- has_many :users, through: :groups_users

## groups_usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|user_id|integer|
|group_id|integer|

### Associationテーブル
- belongs_to :users
- belongs_to :groups

