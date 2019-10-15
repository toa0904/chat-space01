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


## usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|name|string|index: true,null: false,unique: true|
|email|string|null: false|


### Association
- has_many :groups, though: members
- has_many :messages
- has_many :members

## groupsテーブル

|Colum|Type|Options|
|-----|----|-------|
|id|integer||
|username|string|null: false|
|groupname|string|null: false|
|user_id|integer|

### Asociation
- has_many :users, through: :groups_users

## membersテーブル
|Colum|Type|Options|
|-----|----|-------|
|member|string|

### Association
- has_many :groups, though: users
- has_many :users

## groups_usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
- belongs_to :member

