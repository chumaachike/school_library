require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(35)
  end

  describe '#new' do
    it 'Has age as the only parameter' do
      expect(@person).to be_instance_of Person
    end

    it 'Has default value for name as Unknown' do
      expect(@person.name).to eq 'Unknown'
    end

    it 'Has age of 35' do
      expect(@person.age).to eql 35
    end

    it 'Has numeric id' do
      expect(@person.id).to be_instance_of Integer
    end
  end
end

describe Person do
  before :each do
    @person = Person.new(23, 'Jenipher', false)
  end

  describe '#new' do
    it 'Has name as Jenipher' do
      expect(@person.name).to eq 'Jenipher'
    end

    it 'Has age of 23' do
      expect(@person.age).to be 23
    end

    it 'Person is not possible to use a service' do
      expect(@person.can_use_services?).to be_falsey
    end

    it 'Correct_name should return the name of Person' do
      expect(@person.correct_name).to eq 'Jenipher'
    end
  end
end