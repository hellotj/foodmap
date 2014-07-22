class Food
  include Mongoid::Document
  field :type, type: String
  field :harvested_on, type: String
  field :market, type: String
  field :longi, type: String
  field :lat, type: String


  belongs_to :farm
  has_many :foodpicks
end
