class Trip < ApplicationRecord
  has_many :destinations
  accepts_nested_attributes_for :destinations
end
