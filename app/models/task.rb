class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  attr_accessible :description, :due_date, :title
end
