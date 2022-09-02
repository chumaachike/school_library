require 'spec_helper'

describe Student do
  before :each do
    @classroom = Classroom.new('History and Government')
    @student = Student.new(@classroom, 6)
  end

  describe '#new' do
    it 'Has the Student class' do
      expect(@student).to be_instance_of Student
    end

    it 'Has History and Government as classroom' do
      expect(@student.classroom.label).to eq 'History and Government'
    end

    it 'Has Unknown as name' do
      expect(@student.name).to eq 'Unknown'
    end

    it 'Has classroom as instance of Classroom' do
      expect(@student.classroom).to be_instance_of Classroom
    end

    it 'Has age of 6' do
      expect(@student.age).to be 6
    end
  end
end
