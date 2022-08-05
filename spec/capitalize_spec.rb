require 'spec_helper'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new(23, 'pascal', parent_perimission: true)
    @capitalize_decorator = CapitalizeDecorator.new(@person)
  end

  describe '#new' do
    it 'Creates a new CapitalizeDecorator instance' do
      @capitalize_decorator.should be_an_instance_of CapitalizeDecorator
    end
  end

  describe '#nameable' do
    it 'checks if nameable is the initailze value' do
      @capitalize_decorator.nameable.should eql @person
    end
  end

  describe '#correct_name' do
    it 'returns a capitalized person name' do
      @capitalize_decorator.correct_name.should eql 'Pascal'
    end
  end
end
