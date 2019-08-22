# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :groups_id, through: :messages
- has_many :messages

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|group|text|null: false|
|message_id|text|null: false, foreign_key: true|
|users_id|integer|null: false, foreign_key: true|
### Association
- has_many :users_id, through: :messages
- has_many :messages

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :space
- belongs_to :user