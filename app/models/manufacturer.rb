class Manufacturer < ActiveRecord::Base
  validates :name, :country, presence: true

  has_many :cars
end
