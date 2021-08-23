class AddUserLikeableUniquenessIndexToLike < ActiveRecord::Migration[6.1]
  def change
    add_index :likes, [:likeable_id, :likeable_type, :user_id], unique: true
  end
end
