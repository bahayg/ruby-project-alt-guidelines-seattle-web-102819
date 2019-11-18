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
    puts "[2] Find a principal investigator"
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
    user_name = gets.chomp
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
    user_discipline = gets.chomp
    Student.create(name: user_name, discipline: user_discipline)
    puts ""
    puts "" 
    puts "Succesfully added to our list!".green.bold
    puts ""
    puts ""
end

def find_by_discipline
    puts ""
    puts ""
    puts "-----------------------------------------------------------------------------------"
    puts "Please select and type a discpline to see which PIs are working in that discipline:"
    puts "-----------------------------------------------------------------------------------"
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
    user_discipline = gets.chomp
    PrincipalInvestigator.all.select do |pi|
    if pi.discipline == user_discipline
        puts ""
        puts ""
        puts "#{pi.name} is working in #{user_discipline} field!".green.bold
        puts ""
        puts ""
    end
    end 
end

# def search_project
#     puts ""
#     puts ""
#     puts "--------------------------------------------------"
#     puts "Please type a name of a PI to see related projects"
#     puts "--------------------------------------------------"
#     puts ""
#     puts ""
#     user_pi = gets.chomp
#     pi = PrincipalInvestigator.all.find do |pi|
#         pi.name == user_pi  
#     end
#     projects = Project.all.select do |project|
#                 project.principal_investigator_id == pi.id
#     end
#         if projects.length == 0
#             puts "This PI does not have a project!"
#         else   
#             project_names = projects.select do |project| 
#                 project.name 

#             puts ""
#             puts ""
#             puts "#{user_pi} is working on #{project_names}!".green.bold
#             puts ""
#             puts ""
#             binding.pry 
#             end
#         end
# end

def add_a_project
    puts ""
    puts ""
    puts "------------------------------------"
    puts "Please type the name of your project"
    puts "------------------------------------"
    puts ""
    project_name = gets.chomp
    puts ""
    puts "-------------------------------"
    puts "Please type the name of your PI"
    puts "-------------------------------"
    puts ""
    project_PI = gets.chomp
    puts ""
    puts "-----------------------------"
    puts "Please put the type of grant"
    puts "-----------------------------"
    puts ""
    project_grant_type = gets.chomp
    puts ""
    puts "-------------------------------"
    puts "Please type the amount of grant"
    puts "-------------------------------"
    puts ""
    Project.create(name: user_name, discipline: user_discipline)

end

def get_command    
    loop do
    user_input = select_from_menu
        if user_input == "1"
            sign_user_up
        elsif 
            user_input == "2"
            find_by_discipline 
        elsif
            user_input == "3"
            search_project
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
# search_project
get_command

