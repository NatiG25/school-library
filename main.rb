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

def person_info(app)
  puts 'What is the person\'s id?'
  app.people.each_with_index do |person, index|
    puts "#{index}. Name: #{person.name} ID: #{person.id} Age: #{person.age}"
  end
  id = gets.chomp
  app.all_rentals(id.to_i)
end

def all_lists(app, input)
  puts input
  case input
  when 1
    puts 'List of books'
    app.all_books
  when 2
    puts 'List of people'
    app.all_people
  else
    puts 'Invalid input!'
  end
end

def create_people_from_input(app)
  puts 'Do you want to create a student (1) or a teacher? (2) [Input 1 or 2]'
  input = gets.chomp.to_i
  case input
  when 1
    create_student(app)
  when 2
    create_teacher(app)
  else
    puts 'Invalid input!'
  end
end

def create_options(app, input)
  case input
  when 3
    create_people_from_input(app)
  when 4
    create_book(app)
  when 5
    create_rental(app)
  end
end

def check_input(app, input)
  case input
  when 1..2
    all_lists(app, input)
  when 3..5
    create_options(app, input)
  when 6
    person_info(app)
  when 7
    puts 'Goodbye!'
    raise StopIteration
  else
    puts "You input #{input}"
  end
end

def main
  app = App.new
  loop do
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    input = gets.chomp.to_i
    check_input(app, input)
  end
end

main
