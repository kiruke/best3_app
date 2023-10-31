class Item < ApplicationRecord
  belongs_to :item_post
  has_many :bookmark, dependent: :destroy 
  has_many :comment,  dependent: :destroy
  has_many :item_rank,     dependent: :destroy
end
