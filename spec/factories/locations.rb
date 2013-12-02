# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    weblink "MyString"
    name "MyString"
    address "MyString"
    city nil
    state nil
    zip "MyString"
    hours "MyString"
  end
end
