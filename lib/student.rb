require_relative "../config/environment.rb"

class Student
  attr_accessor :id, :name, :grade

  def self.new_from_db(row)
    new_student = self.new
    new_student.id = row[0]
    new_student.name = row[1]
    new_student.grade = row[2]
    new_student
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
