class Warehouse < ApplicationRecord
  has_many :items

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :location
end
