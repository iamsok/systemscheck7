class Car < ActiveRecord::Base
  validates :manufacturer, :color, :mileage, presence: true
  validates :description
  validates :year, greater_than: 1920

  belongs_to :manufacturer
end

