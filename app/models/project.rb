class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  attr_accessible :private, :title
  validates :title, :presence => true
  validates :user, :presence => true, :if => :private
end
