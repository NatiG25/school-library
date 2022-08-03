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
        people_collection = File.open('people.json','w')
        people_collection.write(JSON.generate(app.people))
        people_collection.close
    end
end