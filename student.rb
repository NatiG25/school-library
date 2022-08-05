require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, parent_perimission, classroom = nil)
    super(age, name, parent_perimission: parent_perimission)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hookey
    "¯\(ツ)/¯"
  end

  def to_json(*_args)
    JSON.generate(
      {
        age: @age,
        name: @name,
        parent_perimission: @parent_perimission,
        classroom: @classroom
      }
    )
  end
end
