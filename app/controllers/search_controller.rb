class SearchController < ApplicationController
  def index
    @stations = StationFacade.new.stations(params["q"])
  end
end
