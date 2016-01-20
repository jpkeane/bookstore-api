RSpec.describe Book, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :title }
    it { is_expected.to have_attribute :price }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :author }
    it { is_expected.to belong_to :publisher }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :author }
  end

  describe 'methods' do

  end

  describe 'factories' do
    it 'has valid factory' do
      expect(FactoryGirl.create(:book)).to be_persisted
      expect(FactoryGirl.create(:self_published_book)).to be_persisted
    end
  end
end
