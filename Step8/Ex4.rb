
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
  #print  using until loop
  count = 1
  until count > students.length
    student = students[count]
    puts "#{students[:name]} (#{students[:cohort]} cohort)"
    count += 1
  end
end



def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
