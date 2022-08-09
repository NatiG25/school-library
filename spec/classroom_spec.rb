require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Mathematics')
    @student = Student.new(23, 'Pascal', true)
    @classroom.add_student(@student)
  end

  describe '#new' do
    it 'Creates a new Classroom instance' do
      @classroom.should be_an_instance_of Classroom
    end
  end

  it 'check if created class is Mathematics' do
    @classroom.label.should eql 'Mathematics'
  end

  describe '#add_student' do
    it 'checks add_student method' do
      @classroom.students[0].should eql @student
    end

    it 'checks if student attribute has added classroom instance' do
      @student.classroom = @classroom
    end
  end
end
