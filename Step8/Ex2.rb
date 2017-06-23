
#asking for user imput
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The Students of Villians Accdemy"
  puts "-----------"
end

#with help from ana's hint i used the each_with_index hint!
def print(students)
  #ask for input
  puts "Please enter a specific letter to find student"
  spec_letter = gets.chomp
  #define result with specific letter
  puts "Students begining with \"#{spec_letter.upcase}\" :"
  students.each_with_index do |student, index|
    if student[:name].start_with? (spec_letter.upcase)
    puts "#{index+1}: #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
