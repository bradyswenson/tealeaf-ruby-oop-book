class Student

	def initialize(name, grade)
		@name = name
		@grade = grade
	end

	def better_grade_than?(other_student)
    grade > other_student.grade
  end

protected

  def grade
    @grade
  end
end

erick = Student.new("Erick", 90)
kevin = Student.new("Kevin", 84)
puts "Well done!" if erick.better_grade_than?(kevin)