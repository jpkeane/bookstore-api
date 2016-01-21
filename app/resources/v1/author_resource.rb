module V1
  # RentalStateResource - JSONAPI Resource for RentalState
  class AuthorResource < BaseResource
    attributes :name

    has_many :published
    has_many :books

    class << self
      def creatable_fields(context)
        super - [:rentals]
      end

      alias_method :updatable_fields, :creatable_fields
    end
  end
end
