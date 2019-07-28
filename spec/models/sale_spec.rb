require 'rails_helper'

RSpec.describe Sale, type: :model do

  subject { Sale.new }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end
