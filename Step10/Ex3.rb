#i wanted to start simple again then refactor from there.

@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

  def print_menu
    puts "1.  Input the students"
    puts "2.  show the students"
    puts "9.  Exit" #9 because we will be adding more items
  end

  def show_students
    print_header
    print(students)
    print_footer(students)
  end

  def process(selection)
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you mea, try again please."
    end
  end

#asking for user imput
def input_students
  puts "Please enter the names of the students"
  puts "To finish, enter 'q'."
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #puts hash in array
    @students << {name: name, cohort: :november}

    #print the number of students
    if @students == 1
      puts "Now we have 1 Student"
    else
      puts "Now we have #{@students.count} Students"
    end
    #get another name
    puts "Please Enter another Name"
    name = gets.chomp
  end

#print the header
def print_header
  if @students.count > 0
  puts "The Students of Villians Accdemy".center(50)
  puts "-----------".center(50)
end
end

#print
def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]})"
  end
end


def print_footer(students)
  if @students.count == 0
    puts "There are no students"
  elsif @students.count == 1
    puts "Overall there is 1 great student"
  else
    puts "Overall, we have #{students.count} great students".center(50)
end
end

students = input_students
print_header
print_student_list
print_footer(students)
