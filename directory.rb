
#let's put all students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
#create a header
def print_header
  puts "The Students of Villains Academy"
  puts "-----------"
end

#now passing the students variable to the methods as an argument called "names". This is because the methods do not
#access to local vairables defined outside them.
def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
