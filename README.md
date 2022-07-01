## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

##　アソシエーション
has_many :employees

## start_stop テーブル

| Column        | Type       | Options                  |
| ------------- | ---------- | ------------------------ |
| start         | references | null: false, foreign_key |
| stop    　　　 | references | null: false, foreign_key |
| user          | references | null: false, foreign_key |


##　アソシエーション

has_many :starts
has_many :stops




## start

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| start_time  | time   | null: false |



##　アソシエーション

belomgs_to :start_stop


## stop

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| stop_time   | time   | null: false |



##　アソシエーション

belomgs_to :start_stop


