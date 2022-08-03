class Rental
  attr_accessor :date, :book, :person

  def initialize(person, book, date)
    @person = person
    person.rentals << self

    @book = book
    book.rentals << self

    @date = date
  end

  def to_json(*_args)
    JSON.generate(
      {
        person: @person,
        book: @book,
        date: @date
      }
    )
  end
end
