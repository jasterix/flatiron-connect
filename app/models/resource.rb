class Resource < ApplicationRecord
  has_many :follows
  has_many :students, through: :follows
end
