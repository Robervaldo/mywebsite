class Post < ActiveRecord::Base
  attr_accessible :content, :slug, :status, :tags, :title
end
