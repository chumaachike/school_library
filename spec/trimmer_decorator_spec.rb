require 'spec_helper'

describe TrimmerDecorator do
  it 'test correct name method' do
    person = Person.new(12, 'maximilianus')
    trimmer = TrimmerDecorator.new(person)
    expect(trimmer.correct_name).to eq 'maximilian'
  end

  it 'test correct name method' do
    person = Person.new(15, '   james  ')
    trimmer = TrimmerDecorator.new(person)
    expect(trimmer.correct_name).to eq 'james'
  end
end
