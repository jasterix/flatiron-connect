class Instructor < ApplicationRecord
  has_many :instruct_mods
  has_many :mods, through: :instruct_mods


end
