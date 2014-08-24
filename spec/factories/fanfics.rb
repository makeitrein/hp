# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fanfic do
    title "MyString"
    author "MyString"
    description "MyText"
    word_count 1
    published "2014-08-24 13:13:09"
    updated "2014-08-24 13:13:09"
    user ""
    status 1
  end
end
