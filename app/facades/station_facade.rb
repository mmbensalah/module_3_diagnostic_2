class StationFacade
  def initialize
  end

  def stations(fuel, zip)
    service.get_stations(fuel, zip)
  end

  private

  def service
    NrelService.new
  end
end
