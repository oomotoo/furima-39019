# DB 設計

## users table

| Column             | Type                | Options                      |
|--------------------|---------------------|------------------------------|
| nickname           | string              | null: false                  |
| email              | string              | null: false,uniqueness: true |
| user_password      | string              | null: false,uniqueness: true |
| first_name         | string              | null: false                  |
| last_name          | string              | null: false                  |
| first_name_kana    | string              | null: false                  |
| last_name_kana     | string              | null: false                  |
| birth_day          | date                | null: false                  |
### Association

* has_many :items
* has_one  :credit_card
* has_one  :destinations

## credit_card table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| user_id                             | integer	   | null: false, foreign_key: true |
| customer_id                         | references | null: false, foreign_key: true |
| card_id                             | references | null: false, foreign_key: true |


### Association

- belongs_to :user

## categories table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| name        | string     | null: false                    |
| ancestry    | string     |                                |


### Association

- has_many :items

## images table

| Column      | Type       | Options                             |
|-------------|------------|-------------------------------------|
| image       | string     | null: false                         |
| product_id  | references |null: false, foreign_key:true        |

### Association

- belongs_to :items

## brands table

| Column      | Type       | Options                             |
|-------------|------------|-------------------------------------|
| name        | string     | null: false                         |

### Association

- has_many :items

## items table

| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| name               | string              | null: false                     |
| price              | integer             | null: false                     |
| syopping_area      | string              | null: false                     |
| detail             | text                | null: false                     |
| syopping_day       | integer             | null: false                     |
| delivery_fee       | integer             | null: false                     |
| condition          | string              | null: false                     |
| user_id            | references          | null: false, foreign_key: true  |
| buyer_id           | references          | null: false, foreign_key: true  |
| category_id        | references          | null: false, foreign_key: true  |
| brand_id           | references          | null: false, foreign_key: true  |

### Association

* has_many   :images
* belongs_to :brand
* belongs_to :category
* belongs_to :user

## items table

| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| name               | string              | null: false                     |
| price              | integer             | null: false                     |
| syopping_area      | string              | null: false                     |
| detail             | text                | null: false                     |
| syopping_day       | integer             | null: false                     |
| delivery_fee       | integer             | null: false                     |
| condition          | string              | null: false                     |
| user_id            | references          | null: false, foreign_key: true  |
| buyer_id           | references          | null: false, foreign_key: true  |
| category_id        | references          | null: false, foreign_key: true  |
| brand_id           | references          | null: false, foreign_key: true  |

### Association

* has_many   :images
* belongs_to :brand
* belongs_to :category
* belongs_to :user

## destinations table

| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| first_name         | string              | null: false                     |
| last_name          | string              | null: false                     |
| first_name_kana    | string              | null: false                     |
| last_name_kana     | string              | null: false                     |
| post_cord          | integer             | null: false                     |
| city               | string              | null: false                     |
| adress             | string              | null: false                     |
| bulding_name       | string              |                                 |
| room_number        | string              |                                 |
| phone_number       | string              |                                 |
| user_id            | references          |                                 |

### Association

* has_many   :images
* belongs_to :brand
* belongs_to :category
* belongs_to :user
