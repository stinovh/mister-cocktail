class Cocktail < ActiveRecord::Base
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
