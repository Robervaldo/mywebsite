class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title, limit: 150, null: false
      t.text :description, null: false
      t.references :language
      t.boolean :status, null: false, default: 1
      t.date :start_date, null: false
      t.date :end_date, null: true
      t.string :tags, limit: 50, null: false
      t.string :slug, null: false

      t.timestamps
    end
    add_index :courses, :language_id
    add_index :courses, :title, unique: true
    add_index :courses, :slug, unique: true
  end
end
