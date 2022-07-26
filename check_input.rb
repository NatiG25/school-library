require './people_main'
require './books_main'
require './rentals_main'
require './people_info'

class HandleInput
  def self.check_input(app, input)
    case input
    when 1..2
      all_lists(app, input)
    when 3..5
      create_options(app, input)
    when 6
      PeopleInfo.person_info(app)
    when 7
      puts 'Goodbye!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end

  def self.create_options(app, input)
    case input
    when 3
      create_people_from_input(app)
    when 4
      CreateBooks.create_book(app)
    when 5
      CreateRentals.create_rental(app)
    end
  end

  def self.create_people_from_input(app)
    puts 'Do you want to create a student (1) or a teacher? (2) [Input 1 or 2]'
    input = gets.chomp.to_i
    case input
    when 1
      CreatePeople.create_student(app)
    when 2
      CreatePeople.create_teacher(app)
    else
      puts 'Invalid input!'
    end
  end

  def self.all_lists(app, input)
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
end
