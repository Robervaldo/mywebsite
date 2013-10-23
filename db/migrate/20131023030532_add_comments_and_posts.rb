class AddCommentsAndPosts < ActiveRecord::Migration
  def change
  	create_table :comments_posts, id: false do |t|
  		t.references :comment, :post
  	end
  end
end
