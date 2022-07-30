require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(name: 'Unknown', specialization, age, parent_perimission: true)
    super(name, age, parent_perimission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
