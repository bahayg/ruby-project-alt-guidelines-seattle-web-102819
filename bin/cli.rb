require 'colorize'
# require 'artii'
require_relative '../config/environment'

# arter = Artii::Base.new :font => 'slant'
# arter.asciify

def greet
  
    puts ""
    puts ""
    puts ""
    puts " ____                     _                 _       _____   _               _ ".blue.bold   
    puts "|  _ \\   _ __    ___     (_)   ___    ___  | |_    |  ___| (_)  _ __     __| |   ___   _ __ ".blue.bold 
    puts "| |_) | | '__|  / _ \\    | |  / _ \\  / __| | __|   | |_    | | | '_ \\   / _` |  / _ \\ | '__|".blue.bold 
    puts "|  __/  | |    | (_) |   | | |  __/ | (__  | |_    |  _|   | | | | | | | (_| | |  __/ | |".blue.bold    
    puts "|_|     |_|     \\___/   _/ |  \\___|  \\___|  \\__|   |_|     |_| |_| |_|  \\__,_|  \\___| |_|".blue.bold    
    puts "                       |__/".blue.bold                                                                 

    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts "Hi! Welcome to Project Finder!".blue.bold.center(120)
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
end

greet

def name
    puts ""
    puts "Please type your name to start:".blue.bold.blink
    puts ""
    name = gets.chomp
    puts ""
    puts "#{name}; please select a discipline from the following list by typing it to see professors studying in the same discipline:".blue.bold
    puts ""
end

name

def discipline
    puts ""
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
    discipline = gets.chomp
    puts ""
    puts ""
    puts ""
    discipline
end

def create_new_student
    Student.create(name: name, discipline: discipline)
end

def find_by(discipline)
    puts ""
    puts ""
    PrincipalInvestigator.all.select do |pi|
      if pi.discipline == discipline
        puts "#{pi.name} is working in the same field with you.".bold
        puts ""
        puts ""
        puts ""
        puts "If you want to see the results for a different discipline, please put your new choice below".blue.bold
        puts ""
      end
    end
end

find_by(discipline)

def update_discipline(discipline)
    discipline
    

end

update_discipline(discipline)



