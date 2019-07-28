FactoryBot.define do
  factory :sale do
    titulo {  }
    descricao { Faker::Commerce.product_name }
    valor { Faker::Commerce.price }
    historia { "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore e." }
    user

  end
end
