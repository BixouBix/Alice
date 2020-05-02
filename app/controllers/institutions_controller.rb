class InstitutionsController < ApplicationController
  def index
    @institutions = Institution.paginate(page: params[:page], per_page: 15)
  end

  def search
  end

  def show
    @institution = Institution.find(params[:id])
  end
end
