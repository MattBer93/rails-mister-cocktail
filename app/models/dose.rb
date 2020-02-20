class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail } # -> read: unique for every cocktail
  belongs_to :cocktail
  belongs_to :ingredient  #belongs_to -> singular here?
end
