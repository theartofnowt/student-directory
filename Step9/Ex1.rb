def interactive_menu
  students = []
  loop do
    #1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" #9 because we'll be adding more items
    #2. read the input and save it into a variable
    selection = gets.chomp
    #3.do what the user asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end


#require a Date
require 'date'
#asking for user imput
def input_students
  puts "Please enter the names of the students"
  puts "To finish, enter 'q'."
  #create an empty array
  students = []
  #Months to check input
  months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  until name == 'q'
    puts "Cohort?"
    cohort = gets.chomp.capitalize
    #add the student hash to the array
    puts "What is your country of birth?"
    country_of_birth = gets.chomp
    puts "What is your Height?"
    height = gets.chomp
    puts "What is your Hobby?"
    hobbies = gets.chomp

    #default settings
    if name.empty?
      name = "No name."
    end

    if !months.include? cohort
      puts "Defaulted to current month"
      cohort = (Date::MONTHNAMES[Date.today.month])
    end
    if height.empty?
      height = "No height"
    end
    if country_of_birth.empty?
      country_of_birth = "No country of birth"
    end
    if hobbies.empty?
      hobbies = "No hobbies"
    end



    students << {name: name, cOb: country_of_birth, height: height, hobbies: hobbies, cohort: cohort.to_sym}

    if students.count == 1
    puts "Now we have 1 student"
  else
    puts "now we have #{students.count} students"
  end
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

    months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    if students.count > 0

      months.each do |month|
        puts month + " Cohort:"


        students.each do |student|
          if student[:cohort] == month.to_sym

          puts "Name: #{student[:name]}\n
          COB: #{student[:cOb]}\n
          Height: #{student[:height]}\n
          Hobbies: #{student[:hobbies]}\n
          Cohort: #{student[:cohort]}"
        end
      end
    end
  end
end



def print_footer(students)
  if students.count == 0
    puts "There are no students"
  elsif students.count == 1
    puts "Overall there is 1 great student"
  else
    puts "Overall, we have #{students.count} great students".center(50)
end
end

students = input_students
print_header
print(students)
print_footer(students)
