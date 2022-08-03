class Data
    def initialize
        @files = w%[book.JSON people.JSON rental.JSON]
    end

    def create_files
        @files.each do |file|
            File.new(file, w+) unless File.exist?(file)
    end
end