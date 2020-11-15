class CompaniesController < ApplicationController
  def index
    @companies = Company.all.page(params[:page])
  end

  def show
  end
end
