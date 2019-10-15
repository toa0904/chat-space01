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
|group_id|references|null: false, foreign_key: true|
|user_id|references|null:false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|name|string|index: true,null: false,unique: true|
|email|string|null: false|


### Association
- has_many :groups, though: :groups_users
- has_many :messages
- has_many :members

## groupsテーブル

|Colum|Type|Options|
|-----|----|-------|
|name|string|null: false|

### Asociation
- has_many :users, through: :groups_users
- has_many :messages, through: group_users



## groups_usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|user_id|references|null:false, foreign_key: true|
|group_id|references|null:false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

