require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Biology')
  end

  describe '#new' do
    context 'With parameters defined on before each' do
      it 'Has instance of Classroom' do
        expect(@classroom).to be_instance_of Classroom
      end

      it 'Has Biology label' do
        expect(@classroom.label).to eq 'Biology'
      end

      it 'Has empty students enroled' do
        expect(@classroom.students.length).to be 0
      end

      it 'Has how to add new student to the class' do
        chuma = Student.new(@classroom, 45, 'Achike')
        @classroom.add_student(chuma)
        expect(@classroom.students.length).to be 1
        expect(@classroom.students[0].name).to eq 'Achike'
        expect(@classroom.students[0]).to be_instance_of Student
      end
    end
    context 'With new parameters' do
      it 'Has new label' do
        classroom = Classroom.new('Math')
        expect(classroom.label).not_to eq 'Biology'
      end
    end
  end
end
