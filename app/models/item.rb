class Item < ApplicationRecord
  belongs_to :warehouse, optional: true
end
