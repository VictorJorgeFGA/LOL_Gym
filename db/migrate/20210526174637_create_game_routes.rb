class CreateGameRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :game_routes do |t|
      t.string :name

      t.timestamps
    end
  end
end
