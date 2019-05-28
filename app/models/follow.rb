class Follow < ApplicationRecord
  belongs_to :student
  belongs_to :resource
end
