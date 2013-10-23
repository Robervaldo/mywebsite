class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :author_email
      t.string :content
      t.boolean :approved
      t.integer :parent

      t.timestamps
    end
  end
end
