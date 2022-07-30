require './book'
require './rental'
require './teacher'
require './student'
require './classroom'

class App
  attr_reader :people, :books, :rentals

  def initialize(people, books, rentals)
    @people = people
    @books = books
    @rentals = rentals
  end

  def all_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def all_people
    @people.each do |person|
      puts "ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
    end
  end

  def all_rentals
    @rentals.each do |rental|
      puts "Name: #{rental.person.name}, Book: #{rental.book.title}, Date: #{rental.date}"
    end
  end

  def create_book(title, author)
    @books << Book.new(title, author)
  end

  def create_student(name, age, classroom: nil, parent_perimission: true)
    @people << Student.new(name, age, classroom, parent_perimission)
  end

  def create_teacher(name, specialization, age, parent_perimission: true)
    @people << Teacher.new(name, specialization, age, parent_perimission)
  end

  def create_rental(person, book, date)
    @rentals << Rental.new(person, book, date)
  end
end
