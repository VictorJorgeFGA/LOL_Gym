class AddSummonerInformationToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :summoner_id, :string, null: false
    add_column :users, :summoner_name, :string
    add_column :users, :queue_type, :string
    add_column :users, :tier, :string
    add_column :users, :rank, :string
    add_column :users, :wins, :integer
    add_column :users, :losses, :integer

    add_index :users, :summoner_id, unique: true
  end
end
