# DB 設計

## users table

| Column             | Type                | Options                      |
|--------------------|---------------------|------------------------------|
| nickname           | string              | null: false                  |
| email              | string              | null: false,uniqueness: true |
| encrypted_password | string        　　　 | null: false 　　　　　　　　　　|
| first_name         | string              | null: false                  |
| last_name          | string              | null: false                  |
| first_name_kana    | string              | null: false                  |
| last_name_kana     | string              | null: false                  |
| birth_day          | date                | null: false                  |
### Association

* has_many :items
* has_many :orders
* has_many :comments

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

## orders table

| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| name               | references          | null: false, foreign_key: true  |
| item               | references          | null: false, foreign_key: true  |


### Association

* belongs_to :user
* belongs_to :item
* has_one :payment

## payments table

| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| orders             | references          | null: false                     |
| postcode           | string              | null: false                     |
| prefecture_id      | integer             | null: false                     |
| city               | string              | null: false                     |
| block              | string              | null: false                     |
| building           | string              | null: false                     |
| phone_number       | string              | null: false                     |

### Association

* belongs_to :order

## orders table

| Column             | Type                | Options                         |
|--------------------|---------------------|---------------------------------|
| name               | references          | null: false, foreign_key: true  |
| item               | references          | null: false, foreign_key: true  |
| text               | text                | null: false                     |


### Association

* belongs_to :user
* belongs_to :item



