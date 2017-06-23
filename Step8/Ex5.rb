
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
    puts "What is your country of birth?"
    country_of_birth = gets.chomp
    puts "What is your Height?"
    height = gets.chomp
    puts "What is your Hobby?"
    hobbies = gets.chomp

    students << {name: name, cOb: country_of_birth, height: height, hobbies: hobbies, cohort: :cohort}
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
  students.each_with_index do |student, index|
    puts "#{index+1}: Name:#{students[:name]} COB:#{country_of_birth[:cOb]} Height:#{height[:height]} Hobbies: #{hobbies[:hobbies]}(#{students[:cohort]} cohort)"
  end
end
#NOT WORKING WHYYYYYYYY!!!!!?


def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
