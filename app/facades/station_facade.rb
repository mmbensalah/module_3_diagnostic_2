class StationFacade
  def initialize
  end

  def stations(location)
    service.get_stations(location)[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  private

  def service
    NrelService.new
  end
end
