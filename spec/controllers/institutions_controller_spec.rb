require 'rails_helper'

RSpec.describe InstitutionsController, type: :controller do
  let(:institutions) { create_list(:institution, 10) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      ap response['title']
      ap response.inspect
      expect(response).to have_http_status(:success)
      expect(subject.instance_variable_get(:@institutions)).to match_array(institutions)
    end
  end

  describe "GET #search" do
    it "returns http success" do
      get :search
      expect(response).to have_http_status(:success)
    end
  end

end
