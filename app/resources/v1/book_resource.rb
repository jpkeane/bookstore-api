module V1
  # BookResource - JSONAPI Resource for RentalState
  class BookResource < BaseResource
    attributes :title, :price

    has_one :author
    #has_one :publisher

    class << self
      def creatable_fields(context)
        super - [:rentals]
      end

      alias_method :updatable_fields, :creatable_fields
    end
  end
end
