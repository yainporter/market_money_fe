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
      @id = hash_data[:id]
      @name = hash_data[:attributes][:name]
      @street = hash_data[:attributes][:street]
      @city = hash_data[:attributes][:city]
      @county = hash_data[:attributes][:county]
      @state = hash_data[:attributes][:state]
      @zip = hash_data[:attributes][:zip]
      @lat = hash_data[:attributes][:lat]
      @lon = hash_data[:attributes][:lon]
      @vendor_count = hash_data[:attributes][:vendor_count]
  end
end
