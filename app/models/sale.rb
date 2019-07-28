class Sale < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  scope :por_usuario, -> (usuario) { where(user_id: usuario.id)}

end
