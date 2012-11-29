# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    title "MyString"
    description "MyText"
    due_date "2012-11-28"
    user nil
    project nil
  end
end
