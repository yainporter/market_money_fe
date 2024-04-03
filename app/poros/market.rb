class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :lat,
              :lon,
              :vendor_count

  def initialize(hash_data)
    hash_data[:data].each do |data|
      @id = data[:id]
      @name = data[:attributes][:name]
      @street = data[:attributes][:street]
      @city = data[:attributes][:city]
      @county = data[:attributes][:county]
      @state = data[:attributes][:state]
      @zip = data[:attributes][:zip]
      @lat = data[:attributes][:lat]
      @lon = data[:attributes][:lon]
      @vendor_count = data[:attributes][:vendor_count]
    end
  end
end
