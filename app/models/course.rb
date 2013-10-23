class Course < ActiveRecord::Base
  belongs_to :language
  attr_accessible :description, :end_date, :slug, :start_date, :status, :tags, :title
end
