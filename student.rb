require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(name: 'Unknown', age, classroom, parent_perimission: true)
    super(name, age, parent_perimission)
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
