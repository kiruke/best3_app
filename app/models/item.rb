class Item < ApplicationRecord
  belongs_to :item_post
  has_many :bookmarks, dependent: :destroy 
  has_many :comments,  dependent: :destroy
  has_many :item_ranks,     dependent: :destroy
end
