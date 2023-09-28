class Item < ApplicationRecord
  belongs_to :item_post
  has_many :bookmark, dependent: :destroy 
  has_many :item,     dependent: :destroy
  has_many :item,     dependent: :destroy
end
