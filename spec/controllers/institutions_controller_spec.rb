require 'rails_helper'

RSpec.describe InstitutionsController, type: :controller do
  let(:institutions) { create_list(:institution, 10) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: institutions.first.id}
      expect(response).to be_successful
    end
  end

end
