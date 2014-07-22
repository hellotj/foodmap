class Market
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  field :market_name, type: String
  field :address, type: String

  field :salt, type: String
  field :hashed_password, type: String
  field :coordinates, type: Array
  has_many :farms
  has_many :foods
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
