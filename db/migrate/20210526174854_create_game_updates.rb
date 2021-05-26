class CreateGameUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :game_updates do |t|
      t.string :name

      t.timestamps
    end
  end
end
