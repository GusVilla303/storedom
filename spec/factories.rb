FactoryGirl.define do
  factory :user

  factory :order do
    user
  end
end
