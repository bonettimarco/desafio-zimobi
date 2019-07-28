class Sale < ApplicationRecord
  has_one_attached :image
  has_one :user
end
