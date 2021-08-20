class AddIsPositiveColumnToLike < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :is_positive, :boolean, null: false
    add_index :likes, :is_positive
  end
end
