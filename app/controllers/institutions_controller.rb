class InstitutionsController < ApplicationController
  def index
    @institutions = Institution.all
  end

  def search
  end
end
