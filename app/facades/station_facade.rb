class StationFacade
  def initialize
  end

  def stations(fuel, zip)
    service.get_stations(fuel, zip)[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  private

  def service
    NrelService.new
  end
end
