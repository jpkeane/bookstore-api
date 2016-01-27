# :reek:UncommunicativeModuleName
module V1
  RSpec.describe PublishingHouseResource do
    let :creatable_fields do
      [:name, :discount, :published].sort
    end

    subject do
      described_class.new PublishingHouse.new, {}
    end

    it 'has the expected creatable attributes' do
      expect(described_class.creatable_fields({}).sort).to eq creatable_fields
    end

    it 'has the expected updatable attributes' do
      expect(described_class.updatable_fields({}).sort).to eq creatable_fields
    end

    it 'has the expected fetchable attributes' do
      expect(subject.fetchable_fields.sort).to eq((creatable_fields + [:id, :created_at, :updated_at]).sort)
    end
  end
end
