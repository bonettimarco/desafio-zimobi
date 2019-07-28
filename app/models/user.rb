class User < ApplicationRecord
  has_one :sale, dependent: :destroy
end
