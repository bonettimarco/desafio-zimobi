require 'rails_helper'

RSpec.feature "Sales", type: :feature do
  let(:usuario1) { FactoryBot.create(:user)}
  let(:usuario2) {FactoryBot.create(:user, :com_anuncio)}
  let(:anuncio) { FactoryBot.create(:sale)}

  context 'criar anúncios' do
    before(:each) do
      usuario1
    end

    it 'cria um anúncio' do
      visit users_path
      click_on "Novo"
      fill_in "sale_titulo", with: "Anúncio 1"
      fill_in "sale_descricao", with: "Casa 3/4"
      fill_in "sale_valor", with: "800000.00"
      fill_in "sale_historia", with: "Aqui começa a história da casa ...."
      click_on "Submeter"

      expect(page.body).to include("Anúncio criado")
    end
  end

  context 'editar anúncio' do
    before(:each) do
      usuario2
    end

    it 'editaum anúncio' do
      visit users_path
      click_on "Ver anúncio"
      click_on "Editar anúncio"
      fill_in "sale_titulo", with: "Anúncio mudado "
      fill_in "sale_descricao", with: "Casa 3/4"
      fill_in "sale_valor", with: "800000.00"
      fill_in "sale_historia", with: "Aqui começa a história da casa ...."
      click_on "Submeter"
      click_on "Ver anúncio"

      expect(page.body).to include("Anúncio mudado")
      expect(page.body).to include("Casa 3/4")
      expect(page.body).to include("Aqui começa a história da casa")
    end
  end
end