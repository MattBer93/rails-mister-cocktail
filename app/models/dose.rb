class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :cocktails, presence: true, uniqueness: true
  belongs_to :ingredients, presence: true, uniqueness: true #belongs_to -> singular here?
end
