class Company < ApplicationRecord

  # Generates random status data for the company.
  # This is just a dummy method to show how the status page
  # would look like if we had real data.
  def fetch_status_data
    data = {}
    24.times.map do |i|
      time = Time.now - i.hours
      # Generate random number between 99 and 100
      value = rand(99..100)
      data[time] = value
    end

    data
  end

end
