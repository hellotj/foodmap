class Foodpick
  include Mongoid::Document
  field :date, type: Date
  belongs_to :food
end
