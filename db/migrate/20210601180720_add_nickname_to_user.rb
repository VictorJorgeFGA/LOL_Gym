class AddNicknameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string
    add_index :users, :nickname
  end
end
