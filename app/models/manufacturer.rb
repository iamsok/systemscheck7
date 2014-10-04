class Manufacturer < ActiveRecord::Base
  validates :name,
  presence: true,
  uniqueness: {message: "This manufacturer already exists in our database"}
  validates :country, presence: true
  has_many :cars
end
