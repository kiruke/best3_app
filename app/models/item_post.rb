class ItemPost < ApplicationRecord
  belongs_to :user
  has_many :item_ranks, dependent: :destroy
end
