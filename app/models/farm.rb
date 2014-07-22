class Farm
  include Mongoid::Document
  field :farm_name, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  field :address, type: String
  belongs_to :user
  has_many :foods
end
