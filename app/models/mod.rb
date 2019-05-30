class Mod < ApplicationRecord
  has_many :notes
  has_many :students, through: :notes
  has_many :instruct_mods
  has_many :instructors, through: :instruct_mods



  def find_note_by_lecture_name(input)
    Note.find_by(lecture_name:input)
  end
end
