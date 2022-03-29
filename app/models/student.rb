class Student < ApplicationRecord

  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.all.map{ |student| student.grade}
    render json: grades
  end
  
  def to_s
    "#{first_name} #{last_name}"
  end

end
