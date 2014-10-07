class Manufacturer < ActiveRecord::Base
  has_many :cars
  validates :name,
    presence: true,
    uniqueness: {message: "This manufacturer already exists in our database"}
  validates :country, presence: true
end
