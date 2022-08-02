class CreateRentals

    def self.create_rental(app)
        puts 'Select a book from the following list by number : '
        app.books.each_with_index do |book, index|
          puts "#{index}. Title: #{book.title}, Author: #{book.author}"
        end
        book_id = gets.chomp
        book = app.books[book_id.to_i]
    
        puts 'Select a person from the following list by number (not id) : '
        app.people.each_with_index do |person, index|
          puts "#{index}. Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        id_person = gets.chomp
        person = app.people[id_person.to_i]
    
        puts 'Date : '
        date = gets.chomp
        app.create_rental(person, book, date)
        puts 'Rental created!'
      end
end