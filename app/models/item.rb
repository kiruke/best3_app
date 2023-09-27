class Item < ApplicationRecord
  has_many :bookmarks, dependent: :destroy 
  has_many :items,     dependent: :destroy  
end
