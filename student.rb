require_relative './person'

class Student < Person
  def initialize(classroom, age, parent_perimission: true, name: 'Unknown')
    super(age, parent_perimission, name)
    @classroom = classroom
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
