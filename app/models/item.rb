class Item < ApplicationRecord
  has_many :bookmarks, dependent: :destroy 
end
