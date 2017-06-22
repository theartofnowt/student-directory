
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
#and then print them
puts "The Students of Villains Academy"
puts "-----------"
students.each do |student|
  puts student
end
#finally we print the total
puts "Overall, we have #{students.count} great students"
#it is important that print() does not add new line characters
