require 'spec_helper'

describe Teacher do

    before :each do
        @teacher = Teacher.new('Jarso', 'Math', 40)
    end

    describe '#new' do
    it "Creates a new teacher instance" do
        @teacher.should be_an_instance_of Teacher
        end
    end
end