require 'helper'
require 'pry'

describe Taxjar::Client do
  describe '#api_key?' do
    it 'returns true if api_key is present' do
      client = Taxjar::Client.new(api_key: 'AK')
      expect(client.api_key?).to be true
    end

    it 'returns false if api_key is not present' do
      client = Taxjar::Client.new
      expect(client.api_key?).to be false
    end
  end

  describe '#user_agent' do
    it 'returns string with version' do
      client = Taxjar::Client.new(api_key: 'AK')
      expect(client.user_agent).to eq("TaxjarRubyGem/#{Taxjar::Version}")
    end
  end

  describe '#connected?' do
    # before do
    #   stub_get('/v2/connection').to_return(body: fixture('order.json'),
    #                                                 headers: {content_type: 'application/json; charset=utf-8'})
    # end

    it 'returns true when connected' do
      client = Taxjar::Client.new(api_key: 'AK')
      # binding.pry
      client.connected?
      expect(client.connected?).to eq(true)
      #expect request to have been made
      # expect(a_get('/v2/connection')).to have_been_made
    end

    # it 'returns false when not connected' do
    #   client = Taxjar::Client.new
    # end
  end
end
