class Product < ApplicationRecord
  require 'jp_prefecture'

  belongs_to :user
  belongs_to :category
  belongs_to :saling_product
  belongs_to :bought_product
  belongs_to :sold_product
  belongs_to :brand
  has_many :product_images
  has_many :comments

  enum status:{unused: 0, near_unused:1, no_dirt:2, some_dirt:3, dirt:4, poor:5}

  enum who_charge_shipping:{"---":0,送料込み（出品者負担）:1,着払い（購入者負担）:2}

  enum how_long_shipping:{until_2days: 0, until_3days: 1, until_7days: 2}

  enum shipping_region:{
    北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47
  }
end
