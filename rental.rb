class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date

    @book = book
    book.visits << self

    @person = person
    person.visits << self
  end
end
