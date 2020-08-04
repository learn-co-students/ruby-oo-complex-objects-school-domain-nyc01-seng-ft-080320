# code here!
require 'pry'
class School
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.has_key?(grade) 
            roster[grade] << name
        else
        roster[grade] = [name]
        end
        
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        
       roster.each { |grades, students| roster[grades] = students.sort}
       
    end
end