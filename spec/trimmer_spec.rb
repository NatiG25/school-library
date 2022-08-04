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
end
