class Comment < ActiveRecord::Base
  attr_accessible :approved, :author, :author_email, :content, :parent
end
