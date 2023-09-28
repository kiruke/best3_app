class CreateItemRanks < ActiveRecord::Migration[6.1]
  def change
    create_table :item_ranks do |t|
      t.references :item_post, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :rank

      t.timestamps
    end
  end
end
