# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    fanfic nil
    user nil
    headline "MyString"
    content "MyText"
    rating 1
  end
end
