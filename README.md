# テーブル設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false  unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| read_first_name    | string | null: false               |
| read_last_name     | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :products
- has_many :item_purchases
- has_many :comments

## products テーブル
| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| name                | string     | null: false                    |
| explanation         | text       | null: false                    |
| category_id         | integer    | null: false                    |
| condition_id        | integer    | null: false                    |
| postage_type_id     | integer    | null: false                    |
| prefecture_id       | integer    | null: false                    |
| preparation_day_id  | integer    | null: false                    |
| price               | integer    | null: false                    |
| user                | references | null: false, foreign_key: true | 


### Association

- belongs_to :user
- has_one :item_purchase
- has_many :comments
- belongs_to_active_hash :category
- belongs_to_active_hash :condition
- belongs_to_active_hash :postage_type
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :preparation_day
- belongs_to :seller, class_name: "User"


## item_purchases テーブル
| Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| product       | references| null: false, foreign_key: true |
| user          | references| null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :product
- has_one :purchase_info


## comments テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| product | references | null: false, foreign_key: true |

### Association

- belongs_to :product
- belongs_to :user

## purchase_infos テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    |
| item_purchase | references | null: false, foreign_key: true |

### Association

- has_one_active_hash :prefecture
- berongs_to :item_purchase



