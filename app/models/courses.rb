class Courses < ActiveRecord::Base
  attr_accessible :description, :end_date, :languages, :start_date, :state, :tags, :title
end
