require 'colorize'
require_relative '../config/environment'

def greet
  
    puts ""
    puts ""
    puts ""
    puts ""
    puts " ____                     _                 _       _____   _               _ ".green.bold   
    puts "|  _ \\   _ __    ___     (_)   ___    ___  | |_    |  ___| (_)  _ __     __| |   ___   _ __ ".green.bold 
    puts "| |_) | | '__|  / _ \\    | |  / _ \\  / __| | __|   | |_    | | | '_ \\   / _` |  / _ \\ | '__|".green.bold 
    puts "|  __/  | |    | (_) |   | | |  __/ | (__  | |_    |  _|   | | | | | | | (_| | |  __/ | |".green.bold    
    puts "|_|     |_|     \\___/   _/ |  \\___|  \\___|  \\__|   |_|     |_| |_| |_|  \\__,_|  \\___| |_|".green.bold    
    puts "                       |__/".green.bold                                                                 
    puts ""
    puts ""
    puts ""
    puts ""
    puts "Hi! Welcome to Project Finder!".green.bold.center(120)
    puts ""
    puts ""
    puts ""
    puts ""
end

def menu_selection
    puts ""
    puts ""
    puts ""
    puts "Please enter a command to proceed".green.bold 
    puts ""
    puts ""
    puts "ADD = adds your name to our list".green.bold 
    puts ""
    puts "SEARCH = searches professors by their discipline".green.bold 
    puts ""
    puts "UPDATE = updates your search".green.bold 
    puts ""
    puts "REMOVE = removes your name from our list".green.bold 
    puts ""
    puts ""
end


def user_menu_selection
  menu_selection
  puts ""
  user_input = gets.chomp
  puts ""
  if user_input == "ADD"
    create_new_student
    puts "You are in our list!"
  elsif 
    user_input == "SEARCH"
    create_new_student
    find_by_discipline(discipline)
  elsif
    user_input == "UPDATE"
    create_new_student
    update_discipline
  else
    user_input == "REMOVE"
    # create_new_student
    remove_student  
  end
menu_selection
end

def name_method
    puts ""
    puts "Please type your name to start:".green.bold.blink
    puts ""
    name = gets.chomp
    puts ""
    puts ""
    puts "Welcome #{name}; please select a discipline from the following list by typing it to see professors studying in the same discipline:".green.bold
    puts ""
    name
end 

def discipline_method
    puts ""
    puts "" 
    puts "Biochemistry".italic.red.bold
    puts "Plant Science".italic.red.bold
    puts "Cancer Research".italic.red.bold
    puts "Genetics".italic.red.bold
    puts "Neuroscience".italic.red.bold
    puts "Molecular Biology".italic.red.bold
    puts "Microbiology".italic.red.bold
    puts ""
    puts ""
    discipline = gets.chomp
    puts ""
    discipline
end

def create_new_student
  name = name_method
  discipline = discipline_method
  Student.create(name: name, discipline: discipline)
end

def find_by_discipline(discipline)
    puts ""
    puts ""
    PrincipalInvestigator.all.select do |pi|
      if pi.discipline == discipline
        puts "#{pi.name} is working in this field".green.bold
        puts ""
        puts ""
        puts ""
        puts "Please enter your name again to make another search:".green.bold
        puts ""
      end
    end
end

def update_discipline
    puts ""
    name_again = gets.chomp
    puts ""
    puts ""
    puts "Please enter a different discipline to get your updated results".green.bold
    puts ""
    puts ""
    discipline_updated = gets.chomp
    puts ""
    puts ""
    puts ""
    student = Student.find_by(name: name_again)
    student.discipline = discipline_updated
    # student.update(discipline: discipline_updated)
    student.save
    
    PrincipalInvestigator.all.select do |pi|
      if pi.discipline == discipline_updated
        puts "#{pi.name} is working in this field.".green.bold
        puts ""
        puts ""
      end
    end
end

def remove_student
    puts ""
    puts "If you do not want to continue now, please enter your name"
    puts ""
    puts ""
    puts ""
    answer = gets.chomp
    puts ""
    puts ""
    puts ""
    student = Student.find_by(name: answer)
    student.destroy
    puts "Good bye #{answer}!"
    puts ""
    puts ""
    puts ""

end



greet
user_menu_selection
# menu_selection
# new_student = create_new_student
# find_by_discipline(new_student.discipline)
# update_discipline
# remove_student


# puts "If you would like to know what these professors are working on, plesase enter your name and type yes."


