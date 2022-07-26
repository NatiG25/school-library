class Person
  attr_accessor :name, age
  attr_reader :id

  def initialize(age, parent_perimission: true, name: 'Unknown')
    @id = Random.rand(1..100)
    @age = age
    @parent_perimission = parent_perimission
    @name = name
  end

  def of_age
    @age > 18
  end

  def can_use_services
    of_age || parent_perimission ? true : false
  end

  private :of_age
end
