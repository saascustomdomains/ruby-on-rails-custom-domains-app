class StatusPageController < ApplicationController

  before_action :set_company
  before_action :set_company_status_data

  def index
    # In index.html.erb use @company and @company_status_data
    # to show correct information for the company
  end

  def set_company
    @company = Company.find_by(domain: request.headers['X-Served-For']) || Company.find_by(domain: 'saascustomdomains.com')
  end

  def set_company_status_data
    @company_status_data = @company.try(:fetch_status_data)
    Rails.logger.info(@company_status_data)
  end
end
