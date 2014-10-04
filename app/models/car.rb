class Car < ActiveRecord::Base
  validates :manufacturer, :color, :mileage, presence: true
  validates :numericality => { :greater_than_or_equal_to => 1920 }

  belongs_to :manufacturer
end

