class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :description
      t.boolean :state

      t.timestamps
    end
  end
end
