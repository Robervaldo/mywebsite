class AddCommentsAndCourses < ActiveRecord::Migration
  def change
  	create_table :comments_courses, id: false do |t|
  		t.references :comment, :course
  	end
  end
end
