require './book'
require './rental'
require './teacher'
require './student'

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

end