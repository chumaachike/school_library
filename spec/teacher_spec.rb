require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new('Python', 37, 'Ben Kiboma')
  end
  describe '#new' do
    it 'teacher should be instance of Teacher class' do
      expect(@teacher).to be_instance_of Teacher
    end

    it 'teacher name have the name Ben Kiboma' do
      expect(@teacher.name).to eq 'Ben Kiboma'
    end

    it 'teacher age should be 37' do
      expect(@teacher.age).to be 37
    end
  end
end
