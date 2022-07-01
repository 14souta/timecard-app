## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

##　アソシエーション
has_many :timecards

## timecard テーブル

| Column        | Type       | Options                  |
| ------------- | ---------- | ------------------------ |
| start_time         | references | null: false, foreign_key |
| stop_time    　　　 | references | null: false, foreign_key |
| user               | references | null: false, foreign_key |


##　アソシエーション

belongs_to :user







