require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, parent_perimission: true, name: 'Unknown')
    super(age, parent_perimission, name)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
