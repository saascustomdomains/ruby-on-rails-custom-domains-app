class StatusPageController < ApplicationController

  before_action :set_company
  before_action :set_company_status_data

  def index
    # In index.html.erb use @company and @company_status_data
    # to show correct information for the company
  end

  # Show the status page for the company with the domain
  # specified in the request header X-Served-For.
  # If header is not present, show the status page for
  # SaasCustomDomains.com
  def set_company
    @company = Company.find_by(domain: request.headers['X-Served-For']) || Company.find_by(domain: 'status.saascustomdomains.com')
  end

  def set_company_status_data
    @company_status_data = @company.try(:fetch_status_data)
    Rails.logger.info(@company_status_data)
  end
end
