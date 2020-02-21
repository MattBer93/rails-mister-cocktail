class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses # -> how to NOT let it destroy self? -> seems to be default?
  has_many :cocktails, through: :doses
end
