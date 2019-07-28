require 'rails_helper'

RSpec.describe User, type: :model do
  context 'testa factories' do
    it 'cria usuario' do
      expect(FactoryBot.create(:user)).to be_a_kind_of(User)
    end


    # it 'cria'
  end

end
