# :reek:UncommunicativeModuleName
module V1
  # Author - JSONAPI Resource for Author
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
