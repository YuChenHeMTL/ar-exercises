class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 2000 }
  validates_presence_of :store
end
