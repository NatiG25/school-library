require 'spec_helper'

describe Person do

    before :each do
        @person = Person.new(23, 'Pascal', true)
    end

    describe '#new' do
    it "Creates a new Person instance" do
        @person.should be_an_instance_of Person
        end
    end
end