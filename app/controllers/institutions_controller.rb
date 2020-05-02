class InstitutionsController < ApplicationController
  def index
    @institutions = Institution.search(params).paginate(page: params[:page], per_page: 5)
  end

  def show
    @institution = Institution.find(params[:id])
  end
end
