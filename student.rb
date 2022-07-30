require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_perimission, classroom: nil)
    super(age, name, parent_perimission: parent_perimission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
