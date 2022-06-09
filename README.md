## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

##　アソシエーション
has_many :timecards

## timecard テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| start_work      | integer | null: false |
| end_work        | integer | null: false |



##　アソシエーション

belongs_to :user
has_one :start_time
has_one :stop_time

## start_time

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| start_work      | time       | null: false               |

##　アソシエーション

belongs_to :timecard

## stop_time

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| stop_work      | time       | null: false               |


##　アソシエーション

belongs_to :timecard

