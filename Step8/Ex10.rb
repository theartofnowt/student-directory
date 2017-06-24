#In the input_students method the cohort value is hard-coded.
#How can you ask for both the name and the cohort? What if one of the values is empty?
#Can you supply a default value? The input will be given to you as a string?
#How will you convert it to a symbol? What if the user makes a typo?

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
  name = gets.gsub!(/\n/, '')
  #while the name is not empty, repeat this code
  until name == 'q'
    puts "Cohort?"
    cohort = gets.gsub!(/\n/, '').capitalize
    #add the student hash to the array
    puts "What is your country of birth?"
    country_of_birth = gets.gsub!(/\n/, '')
    puts "What is your Height?"
    height = gets.gsub!(/\n/, '')
    puts "What is your Hobby?"
    hobbies = gets.gsub!(/\n/, '')

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
    name = gets.gsub!(/\n/, '')
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

    months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

      months.each do |month|
        if student[:cohort] == month.to_sym
          puts month + "Cohort: "


          puts "#{index+1} Name: #{student[:name]}\n
          COB: #{student[:cOb]}\n
          Height: #{student[:height]}\n
          Hobbies: #{student[:hobbies]}\n
          Cohort: #{student[:cohort]}"
        end
      end
  end
end



def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
