class Post < ActiveRecord::Base
  attr_accessible :content, :slug, :status, :tags, :title

  has_and_belongs_to_many :comments
  has_and_belongs_to_many :courses
end
