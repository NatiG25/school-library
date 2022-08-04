require './book'
require './rental'
require './teacher'
require './student'
require './classroom'
require './data'

class App
  attr_reader :people, :books, :rentals

  def initialize
    @people = Data.load_people
    @books = Data.load_books
    @rentals = Data.load_rental
  end

  def all_books
    @books.each do |book|
      puts "[#{book.class}] - Title: #{book.title}, Author: #{book.author}"
    end
  end

  def all_people
    @people.each do |person|
      puts "[#{person.class}] - ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
    end
  end

  def all_rentals(id)
    @people.each do |person|
      next if person.id != id

      person.rentals.each do |rental|
        puts "[#{rental.class}] - Name: #{rental.person.name}, Book: #{rental.book.title}, Date: #{rental.date}"
      end
    end
  end

  def create_book(title, author)
    @books << Book.new(title, author)
  end

  def create_student(age, name, parent_perimission)
    @people << Student.new(age, name, parent_perimission)
  end

  def create_teacher(name, specialization, age)
    @people << Teacher.new(name, specialization, age)
  end

  def create_rental(person, book, date)
    @rentals << Rental.new(person, book, date)
  end
end
