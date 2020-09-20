![groupchat](https://user-images.githubusercontent.com/39142850/68285943-949a8a00-00c3-11ea-9115-96962290da5d.png)

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
