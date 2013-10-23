class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, limit: 150, null: false
      t.text :content, null: false
      t.string :slug, null: false
      t.boolean :status, default: 1
      t.string :tags, limit:50, null: false

      t.timestamps
    end
    add_index :posts, :title, unique: true
    add_index :posts, :slug, unique: true
  end
end
