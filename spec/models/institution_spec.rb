require 'rails_helper'

RSpec.describe Institution, type: :model do
  let(:institution) { Institution }
  describe '#search' do
    context 'no params' do
      it "runs search by" do
        expect(institution).to receive(:search_by).with(params: {}).and_call_original
        expect(institution).not_to receive(:get_institutions)
        institution.search(params: {})
      end
    end

    context 'name' do
      it "gets institutions" do
        params = { name: 'Bank'}
        expect(institution).to receive(:search_by).with(params).and_call_original
        expect(institution).to receive(:get_institutions).with('name', params)
        institution.search(params)
      end
    end

    context 'state' do
      it "gets institutions" do
        params = { state: 'CO'}
        expect(institution).to receive(:search_by).with(params).and_call_original
        expect(institution).to receive(:get_institutions).with('state', params)
        institution.search(params)
      end
    end

    context 'country' do
      it "gets institutions" do
        params = { country: 'USA'}
        expect(institution).to receive(:search_by).with(params).and_call_original
        expect(institution).to receive(:get_institutions).with('country', params)
        institution.search(params)
      end
    end
  end
end
