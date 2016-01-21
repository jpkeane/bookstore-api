module V1
  # RentalStateResource - JSONAPI Resource for RentalState
  class PublishingHouseResource < BaseResource
    attributes :name, :discount

    has_many :published

    class << self
      def creatable_fields(context)
        super - [:rentals]
      end

      alias_method :updatable_fields, :creatable_fields
    end
  end
end
