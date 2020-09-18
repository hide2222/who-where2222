## users テーブル

| Column                 | Type   | Options     |
| -----------------------| ------ | ----------- |
| nickname               | string | null: false |
| email                  | string | null: false |
| password               | string | null: false |
| password_confirmation  | string | null: false |
| family_name            | string | null: false |
| first_name             | string | null: false |
| family_name_kana       | string | null: false |
| first_name_kana        | string | null: false |
| birthday               | date   | null: false |


### Association

- has_many :selected_users
- has_many :matchings
- has_many :messages
- has_many :rooms
- has_one  :logic1
= has_one  :profile


## selectedusers テーブル 

| Column          | Type      | Options                        |
| --------------- | --------- | ------------------------------ |
| user            | references| null: false, foreign_key: true |
| logic_result    | references| null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one_attached :image
- has_one :matching
- has_one :logic_result_id


## matchings テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| selecteduser| references | null: false, foreign_key: true |


### Association

- belongs_to :selected_user
- belongs_to :user
- has_one :room


## rooms テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| matching       | references | null: false, foreign_key: true |
| user           | references | null: false, foreign_key: true |

### Association

- belongs_to :matching
- belongs_to :user
- has_many :messages


## messagesテーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| message      | text       | null: false,                   |
| user         | references | null: false, foreign_key: true |
| room         | references | null: false, foreign_key: true |

###Association

- belongs_to :room
- belongs_to :user



## profileテーブル

| Column          | Type      | Options                        |
| --------------- | --------- | ------------------------------ |
| user_id          | references| null: false, foreign_key: true |
| logic_result    | references| null: false, foreign_key: true |
| profile         | text      | null: false                    |
| pr              | text      | null: false                    |
| hobby           | text      | null: false                    |
| work            | text      | null: false                    |


### Association

- belongs_to :user
- has_one_attached :image


## logic1 テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| logic_result   | integer    | null: false,                   |
| user_id           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :selecteduser
