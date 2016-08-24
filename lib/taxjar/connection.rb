require 'taxjar/base'

module Taxjar
  class Connection < Taxjar::Base
    extend ModelAttribute
    def initialize
      @valid = false
    end

    attr_accessor :valid,                 :boolean
    # attribute :success_count        :integer
    # attribute :error_count          :integer
    # attribute :opened_at            :datetime
    # attribute :requests_remaining   :integer

    # def time_alive
    #   self.opened_at - Date.now
    # end

  end
end
