class Station
  attr_reader :name,
              :street_address,
              :state,
              :zip,
              :fuel_type,
              :distance,
              :access
  def initialize(data)
    @name             = data[:station_name]
    @street_address   = data[:street_address]
    @state            = data[:state]
    @zip              = data[:zip]
    @fuel_type        = data[:fuel_type_code]
    @distance         = data[:distance]
    @access           = data[:access_days_time]
  end
end
