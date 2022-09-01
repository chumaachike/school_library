require 'spec_helper'

describe Decorator do
  before :each do
    @maximilianus = Person.new(14, 'maximilianus')
    @decorator = Decorator.new(@maximilianus)
  end

  it 'Has instance Decorator' do
    expect(@decorator).to be_instance_of Decorator
  end

  it 'Has name maximilianus' do
    expect(@decorator.nameable.name).to eq 'maximilianus'
  end

  it 'Has correct name as the same name' do
    expect(@decorator.correct_name).to eq 'maximilianus'
  end
end
