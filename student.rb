class Student

attr_reader :first_name, :last_name, :grade
 def initialize(first_name, last_name, grade)
   @first_name = first_name
   @last_name = last_name
   @grade = grade
 end

 def senior?
 grade == 12
end

 def to_s
  "#{last_name}, #{first_name}"
 end 
end

 def seniors(students)
   senior_students = []
   students.select { |name| name.senior?} 
 end

scott = Student.new("Scott", "Slocks", 12)
nicole = Student.new("Nicole", "Garret", 12)
jack = Student.new("Jack", "Smith", 10)

all_students = [scott,nicole,jack]

#puts all_students.inspect.to_s
seniors(all_students).each do |student|
 puts student
end
