require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(23, 'Pascal', parent_perimission: true)
  end

  describe '#new' do
    it 'Creates a new Person instance' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#age' do
  it 'checks age initailze value' do
    @person.age.should eql 23
  end
end

describe '#name' do
it 'checks name initailze value' do
  @person.name.should eql 'Pascal'
 end
end

describe '#parent_permission' do
it 'checks parent_permission initailze value' do
  @person.parent_perimission.should eql true
 end
end

describe '#of_age' do
it 'checks of_age method' do
  @person.can_use_services.should eql true
 end
end

describe '#correct_name' do
it 'checks correct_name method' do
  @person.correct_name.should eql 'Pascal'
 end
end
end
