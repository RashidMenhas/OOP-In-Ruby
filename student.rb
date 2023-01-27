require_relative 'person'

class Student < Person
  attr_reader :classroom, :parents_permission

  def initialize(classroom, age, name, parents_permission, id: 0)
    super(age, name, parents_permission, id)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
