class Item < ApplicationRecord
  belongs_to :warehouse, optional: true

  def self.alphabetically
    order(:name)
  end
end
