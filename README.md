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
| start_id      | references | null: false, foreign_key |
| stop_id       | references | null: false, foreign_key |
| employee_id   | references | null: false, foreign_key |


##　アソシエーション

has_many :employees
has_one :start
has_one :stop


## employee

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| family_name        | string | null: false |
| first_name         | string | null: false |


##　アソシエーション

belongs_to :user
belomgs_to :timecard


## start

| Column      | Type | Options     |
| ----------- | ---- | ----------- |
| start_day   | date | null: false |
| start_time  | time | null: false |


##　アソシエーション

belongs_to :timecard

## stop

| Column       | Type | Options     |
| ------------ | ---- | ----------- |
| stop_day     | date | null: false |
| stop_time    | time | null: false |


##　アソシエーション

belongs_to :timecard
