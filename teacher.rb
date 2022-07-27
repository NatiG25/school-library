require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, age, parent_perimission: true, name: 'Unknown')
    super(age, parent_perimission, name)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
