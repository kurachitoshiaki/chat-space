![chat-space](https://res.cloudinary.com/matching-app202009/image/upload/v1600579102/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020-09-19_20.45.32_tptwld.png)

# 📦 Features

## ・Asynchronous communication

![Ajax](https://gyazo.com/baf0eca455c1b020587b6423f766e050/raw)
　
## ・Automatic updating

![auto](https://gyazo.com/e51f17a240277206d8ecdf436ca2d9ba/raw)
　
## ・Incremental search

![Incremental search](https://gyazo.com/5e479a2fe5909f3d5e89a43b75fd5b00/raw)

# chat-space DB
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false,index: true|
### Association
- has_many :groups, through: :messages
- has_many :users_groups
- has_many :messages

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users, through: :messages
- has_many :users_groups
- has_many :messages

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|users.id|references|null: false, foreign_key: true|
|groups.id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
