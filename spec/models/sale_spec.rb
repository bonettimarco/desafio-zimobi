require 'rails_helper'

RSpec.describe Sale, type: :model do

  subject { Sale.new }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'testa factory' do
    it 'cria anúncio' do
      expect(FactoryBot.create(:sale)).to be_a_kind_of(Sale)
    end
    it 'cria usuario com anúncio' do
      usuario = FactoryBot.create(:user, :com_anuncio)
      expect(usuario.sale).to be_a_kind_of(Sale)
    end
  end
end
