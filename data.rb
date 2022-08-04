require 'json'

class Data
  # attr_reader :files
  def initialize
    @files = %w[book.json people.json rental.json]
  end

  def create_files
    @files.each do |file|
      File.new(file, 'w+') unless File.exist?(file)
    end
  end

  def collect_books(app)
    return unless File.exist?('book.json')

    book_collection = File.open('book.json', 'w')
    book_collection.write(JSON.generate(app.books))
    book_collection.close
  end

  def collect_people(app)
    return unless File.exist?('people.json')

    people_collection = File.open('people.json', 'w')
    people_collection.write(JSON.generate(app.people))
    people_collection.close
  end

  def collect_rental(app)
    return unless File.exist?('rental.json')

    rental_collection = File.open('rental.json', 'w')
    rental_collection.write(JSON.generate(app.rentals))
    rental_collection.close
  end

  def all_collections(app)
    collect_books(app)
    collect_people(app)
    collect_rental(app)
  end

  def self.load_books
    data = []
    file = './book.json'
    return data unless File.exist?(file) && File.read(file) != ''

    JSON.parse(File.read(file)).each do |book|
      data << Book.new(book['title'], book['author'])
    end

    data
  end

  def self.load_people
    data = []
    file = './people.json'
    return data unless File.exist?(file) && File.read(file) != ''

    JSON.parse(File.read(file)).each do |person|
      data << if person.key?('specialization')
                Teacher.new(person['name'], person['specialization'], person['age'])
              else
                Student.new(person['age'], person['name'], person['parent_permission'])
              end
    end

    data
  end

  def self.load_rental
    data = []
    file = './rental.json'
    return data unless File.exist?(file)
    return data if File.zero?(file)

    JSON.parse(File.read(file)).each do |rental|
      data << Rental.new(rental['person'], rental['book'], rental['date'])
    end
    data
  end
end
