class Menu < ApplicationRecord
  has_many :menu_items
  has_many :recipes, through: :menu_items

  validates :start_at, :end_at, presence: true 
end
