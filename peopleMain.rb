class CreatePeople

def self.create_student(app)
    puts 'Welcome to our new student!'
    puts 'What\'s your name?'
    name = gets.chomp
    puts 'What\'s your age?'
    age = gets.chomp.to_i
    puts 'Has parents\' permission? (y/n)'
    parent_permission = gets.chomp.downcase == 'y'
    app.create_student(age, name, parent_permission)
    puts 'Student created!'
    end

    def self.create_teacher(app)
    puts 'Welcome to our new teacher!'
    puts 'What is your name?'
    name = gets.chomp
    puts 'What is your age?'
    age = gets.chomp.to_i
    puts 'What is your specialization?'
    specialization = gets.chomp
    app.create_teacher(name, specialization, age)
    puts 'Teacher created!'
    end
end
