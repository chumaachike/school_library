require 'spec_helper'

describe CapitalizeDecorator do
  it 'Test correct name method' do
    person = Person.new(22, 'maximilianus')
    capitalize = CapitalizeDecorator.new(person)
    expect(capitalize.correct_name).to eq 'Maximilianus'
  end
end