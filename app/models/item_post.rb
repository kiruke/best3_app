class ItemPost < ApplicationRecord
  belongs_to :user
  has_many :item_rank, dependent: :destroy
end
