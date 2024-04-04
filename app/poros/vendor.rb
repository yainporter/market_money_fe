class Vendor
  attr_reader :id,
              :name,
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted

  def initialize(data_hash)
    @id = data_hash[:id]
    @name = data_hash[:attributes][:name]
    @description = data_hash[:attributes][:description]
    @contact_name = data_hash[:attributes][:contact_name]
    @contact_phone = data_hash[:attributes][:contact_phone]
    @credit_accepted = data_hash[:attributes][:credit_accepted]
  end
end
