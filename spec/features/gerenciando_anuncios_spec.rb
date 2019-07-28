require 'rails_helper'

RSpec.feature "Sales", type: :feature do
  let(:usuario) { FactoryBot.create(:user)}
  let(:anuncio) { FactoryBot.create(:sale)}
end