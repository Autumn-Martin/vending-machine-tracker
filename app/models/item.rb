class Item < ApplicationRecord
  belongs_to :machine
  validates_presence_of :name
  validates_presence_of :price

end
