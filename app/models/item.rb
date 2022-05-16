class Item < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  belongs_to :warehouse, optional: true

  def self.alphabetically
    order(:name)
  end
end
