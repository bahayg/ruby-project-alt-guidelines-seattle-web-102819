require 'colorize'
require_relative '../config/environment'

def greet
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
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
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts "Hi! Welcome to Project Finder!".green.bold.center(120)
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
end

def select_from_menu
    puts "---------------------------------"
    puts "Please enter a command to proceed"
    puts "---------------------------------"
    puts ""
    puts "[1] Sign up"
    puts ""
    puts "[2] Find a principal investigator studying in your discipline"
    puts ""
    puts "[3] Search a project"
    puts ""
    puts "[4] Add your project"
    puts ""
    puts "[5] Edit the project you entered"
    puts ""
    puts "[6] Delete your project"
    puts ""
    puts "[7] Exit"
    puts "--------------------------------------------------------------"
    puts ""
    puts ""
    user_input = gets.chomp
    puts ""
    user_input
end

def sign_user_up
    puts ""
    puts ""
    puts "Please enter your name:"
    puts ""
    puts ""
    name = gets.chomp
    puts ""
    puts "--------------------------------------"
    puts "Please select and type your discpline:"
    puts "--------------------------------------"
    puts "Biochemistry"
    puts ""
    puts "Plant Science"
    puts ""
    puts "Cancer Research"
    puts ""
    puts "Genetics"
    puts ""
    puts "Neuroscience"
    puts ""
    puts "Molecular Biology"
    puts ""
    puts "Microbiology"
    puts "--------------------------------------"
    puts ""
    puts ""
    discipline = gets.chomp
    Student.create(name: name, discipline: discipline)
    puts ""
    puts "" 
end

# def find_a_pi

# end

def get_command    
    loop do
    user_input = select_from_menu
        if user_input == "1"
            user = sign_user_up
            puts "Succesfully added to our list!".green.bold
            puts ""
            puts ""
        elsif
            user_input == "7"
            puts "Good bye!".green.bold
            puts ""
            puts ""
            break
        else
            puts ""
            puts "Please select an option from menu!".green.bold
            puts ""
            puts ""
        end
    end
end

greet
get_command