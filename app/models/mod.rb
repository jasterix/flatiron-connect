class Mod < ApplicationRecord
  has_many :notes
  has_many :students, through: :notes
  has_many :instruct_mods
  has_many :instructors, through: :instruct_mods
end
