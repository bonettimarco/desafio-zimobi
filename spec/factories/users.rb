FactoryBot.define do
  factory :users do
    name { "MyString" }
    email { "MyString" }
    reset_digest { "MyString" }
    reset_sent_at { "2019-07-27 09:17:19" }
    activation_digest { "MyString" }
    activated { false }
    activated_at { "2019-07-27 09:17:19" }
    admin { false }
    remember_digest { "MyString" }
    password_digest { "MyString" }
  end
end
