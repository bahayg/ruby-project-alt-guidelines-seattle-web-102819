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
    puts "#{name}, Please select a discipline from the following list by typing it to see professors studying in the same discipline:".blue.bold
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
        puts ""
      end
    end
end

find_by(discipline)