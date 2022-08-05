require 'spec_helper'

describe Student do
  before :each do
    @classroom = Classroom.new('Aviation')
    @student = Student.new(23, 'Nati', true, @classroom)
  end

  describe '#new' do
    it 'Creates a new Student instance' do
      @student.should be_an_instance_of Student
    end
  end

    it 'check if the first value is 23 years old' do
      @student.age.should eql 23
    end

    it 'check if name is nati' do
      @student.name.should eql 'Nati'
    end

  it 'check play_hookey method' do
    @student.play_hookey.should eql "¯\(ツ)/¯"
  end

  it 'check classroom attribute in student' do
    @student.classroom.students[0].should eql @student
  end
end
