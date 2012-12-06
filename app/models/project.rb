class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  attr_accessible :private, :title, :user_id
  validates :title, :presence => true
  validates :user, :presence => true, :if => :private

  def user_name
    if user
      user.name
    else
      "unassigned"
    end
  end
end
