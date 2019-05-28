class Student < ApplicationRecord
  has_many :follows
  has_many :resources, through: :follows
  has_many :notes
  has_many :mods, through: :notes
end
