require 'rails_helper'

RSpec.describe Finicity::Client, type: :lib do
  let(:client) { Finicity::Client }
  describe '#token' do
    context 'when there is no token' do
      it "should call #get_token" do
        expect(client).to receive(:get_token)
        client.token
      end

      it "should return a string" do
        expect(client.token).to be_kind_of(String)
      end

    end

    context 'when there is a token' do
      before do
        client.instance_variable_set(:@token, 'some_string')
      end

      it "should not call #get_token" do
        expect(client).not_to receive(:get_token)
        client.token
      end
    end

    context 'when token is more than 2 hours old' do
      before do
        client.instance_variable_set(:@token, 'some_string')
        client.instance_variable_set(:@last_updated, 3.hours.ago)
      end

      it "should call #get_token" do
        expect(client).to receive(:get_token)
        client.token
      end

      it "should return a new string" do
        expect(client.token).not_to eq('some_string')
      end
    end
  end
end
