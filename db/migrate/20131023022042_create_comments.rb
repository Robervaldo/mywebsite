class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author, limit: 150, null: false
      t.string :author_email, limit: 150, null: false
      t.string :content, limit: 500, null: false
      t.boolean :approved, default: 0, null: false
      t.integer :parent_id, null: true

      t.timestamps
    end
  end
end
