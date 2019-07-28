FactoryBot.define do
  factory :user do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    reset_digest { "MyString" }
    reset_sent_at { "2019-07-27 09:17:19" }
    activation_digest { "MyString" }
    activated { true }
    activated_at { "2019-07-27 09:17:19" }
    admin { false }
    remember_digest { "MyString" }
    password_digest { "MyString" }
  end
  trait :com_anuncio do
    after(:create) do |usuario, evaluator|
      create(:sale, user_id: usuario.id)
    end
  end
end
