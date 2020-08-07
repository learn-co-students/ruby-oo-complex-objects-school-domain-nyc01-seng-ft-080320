# code here!
require 'pry'
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, grade)
    if roster[grade]
      roster[grade] << student
    else 
      roster[grade] = []
      roster[grade] << student
    end
  end 
  
    def grade(grade_inputted)
      @roster[grade_inputted]
    end 
    
    def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end 

 
skool = School.new('My high school')
binding.pry