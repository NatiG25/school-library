require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(23, 'Nati', true, 'Aviation')
  end

  describe '#new' do
    it 'Creates a new Student instance' do
      @student.should be_an_instance_of Student
    end
  end
end
