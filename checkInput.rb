require './peopleMain'
require './peopleMain'
require './peopleMain'

class HandleInput
  def initialize(app, input)
    @app = app
    @input = input
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

  def create_options(app, input)
    @create = Create.new(app)
    case input
    when 3
      create_people_from_input(app)
    when 4
      @create.create_book(app)
    when 5
      @create.create_rental(app)
    end
  end

  def create_people_from_input(app)
    @create = Create.new(app)
    puts 'Do you want to create a student (1) or a teacher? (2) [Input 1 or 2]'
    input = gets.chomp.to_i
    case input
    when 1
      @create.create_student(app)
    when 2
      @create.create_teacher(app)
    else
      puts 'Invalid input!'
    end
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

  def person_info(app)
    puts 'What is the person\'s id?'
    app.people.each_with_index do |person, index|
      puts "#{index}. Name: #{person.name} ID: #{person.id} Age: #{person.age}"
    end
    id = gets.chomp
    app.all_rentals(id.to_i)
  end
  
end