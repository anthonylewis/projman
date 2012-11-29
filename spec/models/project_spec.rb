require 'spec_helper'

describe Project do
  it "should require a title" do
    project = Project.new
    project.should_not be_valid
  end

  it "should not be private by default" do
    project = Project.new
    project.should_not be_private
  end

  it "should require a user if the project is private" do
    project = Project.new :title => "Test Project", :private => true
    project.should_not be_valid
  end

  it "should have a list of tasks" do
    project = Project.new
    project.tasks.should be_kind_of(Array)
  end
end
