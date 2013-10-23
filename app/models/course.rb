class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :slug, :start_date, :status, :tags, :title

  belongs_to :language
  has_and_belongs_to_many :comments
  has_and_belongs_to_many :posts

end
