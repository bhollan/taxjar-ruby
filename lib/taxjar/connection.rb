require 'taxjar/base'

module Taxjar
  class Connection < Taxjar::Base
    extend ModelAttribute
    def initialize
      @valid = true
      @exists = true
    end

    attribute :valid,          :boolean
    attribute :exists,         :boolean
    # attribute :vies_available, :boolean

    # class ViesResponse < Validation
    #   extend ModelAttribute
    #
    #   attribute :vat_number,   :string
    #   attribute :request_date, :string
    #   attribute :valid,        :boolean
    #   attribute :name,         :string
    #   attribute :address,      :string
    # end
    #
    # object_attr_reader ViesResponse, :vies_response
  end
end
