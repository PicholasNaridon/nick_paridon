FactoryGirl.define do
  factory :work do |work|
   sequence(:name) { |n| "name#{n}" }
  end
end
