require 'rails_helper'

RSpec.describe Campaign, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description}
    it { is_expected.to have_db_column :amount_raised }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description } 
    it { is_expected.to validate_presence_of :amount_raised }
  end

  describe 'Associations' do
    it { should belong_to(:user) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:campaign)).to be_valid 
    end
  end
end