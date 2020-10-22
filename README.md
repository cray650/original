#テーブル設計

## usersテーブル

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| employee_id | integer | null: false |
| firstname   | string  | null: false |
| lastname    | string  | null: false |
| password    | string  | null: false |
| admin       | boolean |             |

### Association

- has_many :attendences
- has_one :salaries

## attendancesテーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| attending    | time       | null: false |
| leaving      | time       | null: false |
| working-time | time       | null: false |
| overtime     | time       | null: false |
| user         | references | null: false |

### Association

 - has_one :request
 - belongs_to :user

## salariesテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| salary | string     | null: false |
| user   | references | null: false |

### Association

 - belongs_to :user

## Requestsテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| request     | string     | null: false |
| attendence  | references | null: false |

### Association

- belongs_to :attendence