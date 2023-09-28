class ItemRank < ApplicationRecord
  belongs_to :item_post
  belongs_to :item
end
