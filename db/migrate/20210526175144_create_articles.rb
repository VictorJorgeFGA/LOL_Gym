class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :allows_comments, default: true, null: false
      t.integer :article_type, default: 0, null: false

      t.timestamps
    end
  end
end
