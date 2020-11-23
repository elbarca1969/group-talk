FactoryBot.define do
  factory :group do
    name {Faker::Name.name}
    content {"test"}
  end
end
