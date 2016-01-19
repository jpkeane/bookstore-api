RSpec.describe Author, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }
  end

  describe 'methods' do

  end

  describe 'factories' do
    it 'has valid factory' do
      expect(FactoryGirl.create(:author)).to be_persisted
    end
  end
end
