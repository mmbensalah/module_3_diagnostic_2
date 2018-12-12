class NrelService
  def initialize
  end

  def get_stations(zip)
    to_json("/api/alt-fuel-stations/v1.json?fuel_type=LPG,ELEC&zip=#{zip}&limit=10")
  end

  private

  def to_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params['api_key'] = ENV['NREL_API_KEY']
      faraday.adapter  Faraday.default_adapter
    end
  end
end
