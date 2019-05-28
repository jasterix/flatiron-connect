class Mod < ApplicationRecord
  has_many :notes
  has_many :students, through: :notes
  has_many :instructors

end
