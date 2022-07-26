require_relative './nameable'
require_relative './decorator'

class Person < Nameable
  attr_accessor :name, :age, :parent_perimission
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_perimission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @parent_perimission = parent_perimission
    @age = age
    @rentals = []
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
