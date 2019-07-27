FactoryBot.define do
  factory :sale do
    titulo { "MyString" }
    descricao { "MyString" }
    valor { 1.5 }
    historia { "MyString" }
    user { nil }
  end
end
