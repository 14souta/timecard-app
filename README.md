## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

##　アソシエーション
has_many :employees

## timecard テーブル

| Column        | Type       | Options                  |
| ------------- | ---------- | ------------------------ |
| start_time    | time       | null: false, foreign_key |
| stop_time     | time      | null: false, foreign_key |
| employee_id   | references | null: false, foreign_key |


##　アソシエーション

has_many :employees


## employee

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| name        | string | null: false |



##　アソシエーション

belongs_to :user
belomgs_to :timecard


