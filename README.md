## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| start_work_id      | integer  | null: false               |
| end_work_id        | integer  | null: false               |


##　アソシエーション
has_many :timecards

## timecard テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| start_work      | time       | null: false               |
| end_work        | time       | null: false               |
| user_id         | references | null: false, foreign_key: true    |
| today           | date       | null: false               |

##　アソシエーション

belongs_to :user
