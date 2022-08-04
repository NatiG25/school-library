require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(name, specialization, age)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_json(*_args)
    JSON.generate(
      {
        age: @age,
        name: @name,
        specialization: @specialization

      }
    )
  end
end
