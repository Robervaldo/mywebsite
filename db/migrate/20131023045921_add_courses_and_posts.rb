class AddCoursesAndPosts < ActiveRecord::Migration
  def change
  	create_table :courses_posts, id: false do |t|
  		t.references :course, :post
  	end
  end
end
