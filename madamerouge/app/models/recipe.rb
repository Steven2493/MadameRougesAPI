class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ingredients
  has_many :menu_items
  has_many :items, through: :ingredients

  validates :name, :type, :difficulty, :directions, :preptime, :creator, presence: true
  validates_uniqueness_of :creator, scope: %i[type]


end
