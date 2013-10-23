class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :slug
      t.boolean :status
      t.string :tags

      t.timestamps
    end
  end
end
