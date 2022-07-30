require './app'

def create_student(app)
  puts 'Welcome to our new student!'
  puts 'What\'s your name?'
  name = gets.chomp
  puts 'What\'s your age?'
  age = gets.chomp.to_i
  puts 'Has parents\' permission? (y/n)'
  parent_permission = gets.chomp.downcase == 'y'
  app.create_student(name, age, parent_permission)
  puts 'Student created!'
end

def create_teacher(app)
  puts 'Welcome to our new teacher!'
  puts 'What is your name?'
  name = gets.chomp
  puts 'What is your age?'
  age = gets.chomp.to_i
  puts 'What is your specialization?'
  specialization = gets.chomp
  app.create_teacher(name, specialization, age, parent_permission: true)
  puts 'Teacher created!'
end

def create_book(app)
  puts 'What is the book\'s title?'
  title = gets.chomp
  puts 'What is the book\'s author?'
  author = gets.chomp
  app.create_book(title, author)
  puts 'Book created!'
end

def create_rental(app)
    puts 'Select a book from the following list by number : '
    app.books.each_with_index do |book, index|
      puts "#{index}. Title: #{book.title}, Author: #{book.author}"
    end
    id_book = gets.chomp
    book = app.books[id_book.to_i]
  
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
