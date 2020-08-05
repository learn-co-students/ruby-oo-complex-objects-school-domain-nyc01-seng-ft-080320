# code here!
require "pry"
class School
  attr_accessor :roster, :school_name
  def initialize(school_name, roster = {})
    @school_name = school_name 
    @roster = roster 
  end
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
   def grade(grade)
    @roster.select do |key, value|
      return value if key == grade
    end
  end
  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
binding.pry