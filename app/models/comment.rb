class Comment < ActiveRecord::Base
  attr_accessible :approved, :author, :author_email, :content, :parent_id, :create_at

  has_many :children, class_name: "Comment", foreign_key: "parent_id"

  belongs_to :parent, class_name: "Comment"

  has_and_belongs_to_many :posts

  has_and_belongs_to_many :courses

end
