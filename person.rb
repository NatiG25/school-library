require_relative './nameable'
require_relative './decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_perimission: true)
    super()
    @id = Random.rand(1..100)
    @age = age
    @parent_perimission = parent_perimission
    @name = name
  end

  def of_age
    @age > 18
  end

  def can_use_services
    of_age || @parent_perimission
  end

  def correct_name
    @name
  end

  private :of_age
end

# person = Person.new(22, 'maximilianus')
# p person.correct_name
# p capitalizedPerson = CapitalizeDecorator.new(person)
# p capitalizedPerson.correct_name
# p capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
# p capitalizedTrimmedPerson.correct_name
