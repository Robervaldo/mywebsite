class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.references :language
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.string :tags
      t.string :slug

      t.timestamps
    end
    add_index :courses, :language_id
  end
end
