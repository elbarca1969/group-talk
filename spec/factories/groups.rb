FactoryBot.define do
  factory :group do
    name {"test"}
    content {"test"}
    association :user
  end
end
