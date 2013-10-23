class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.reference :languages
      t.boolean :state
      t.string :tags

      t.timestamps
    end
  end
end
