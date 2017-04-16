class Market < ApplicationRecord
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates


  def temperature
    json = ForecastIO.forecast(latitude, longitude, params: { units: 'si' })
    json.currently.temperature.to_i
  end

  def wind
    json = ForecastIO.forecast(latitude, longitude, params: { units: 'si' })
    json.currently.windSpeed * 1.609344
  end

end
