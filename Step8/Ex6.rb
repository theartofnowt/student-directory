
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

    students << {name: name, cOb: country_of_birth, height: height, hobbies: hobbies, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The Students of Villians Accdemy".center(50)
  puts "-----------".center(50)
end

#with help from ana's hint i used the each_with_index hint!
def print(students)
  students.each_with_index do |student, index|
    puts "#{index+1} Name:#{student[:name]}\n
    COB:#{student[:cOb]}\n
    Height:#{student[:height]}\n
    Hobbies: #{student[:hobbies]}\n
    Cohort:#{student[:cohort]}"
  end
end
#i know why now!


def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
