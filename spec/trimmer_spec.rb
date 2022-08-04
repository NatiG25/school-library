require 'spec_helper'

describe TrimmerDecorator do
  before :each do
    @person = Person.new(23, 'Pascal', parent_perimission: true)
    @trimmer_decorator = TrimmerDecorator.new(@person)
  end

  describe '#new' do
    it 'Creates a new TrimmerDecorator instance' do
      @trimmer_decorator.should be_an_instance_of TrimmerDecorator
    end
  end

  describe '#nameable' do
  it 'checks if nameable is the initailze value' do
    @trimmer_decorator.nameable.should eql @person
  end
end

  describe '#correct_name' do
  it 'returns a trimmed person name' do
    @trimmer_decorator.correct_name.should eql 'Pascal'
  end
 end
end
