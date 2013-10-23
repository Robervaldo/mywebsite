class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :description, limit: 100, null: false
      t.boolean :status, default: 1, null: false

      t.timestamps
    end
  end
end
