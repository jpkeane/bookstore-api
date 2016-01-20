RSpec.describe PublishingHouse, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :discount }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }

    it { is_expected.to validate_presence_of :discount }
    it { is_expected.to validate_numericality_of(:discount).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:discount).is_less_than_or_equal_to(1) }
  end

  describe 'methods' do

  end

  describe 'factories' do
    it 'has valid factory' do
      expect(FactoryGirl.create(:publishing_house)).to be_persisted
    end
  end
end
