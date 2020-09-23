class CompaniesController < ApplicationController
  def index
    @companies = Company.all # Using our Company model to load all companies from the db.
  end
  # Automagically load app/views/companies/index.html.erb

  def show
    @company = Company.find(params[:id])
  end
  # Automagically load app/views/companies/show.html.erb
end
