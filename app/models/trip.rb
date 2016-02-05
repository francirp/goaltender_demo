class Trip < ApplicationRecord
  has_many :destinations
  accepts_nested_attributes_for :destinations

  validates :start_date, :end_date, :name, presence: true
end
