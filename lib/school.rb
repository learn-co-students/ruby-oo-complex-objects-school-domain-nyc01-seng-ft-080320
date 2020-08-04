require 'pry'

class School
    attr_reader :name, :roster, :add_student

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student_name, student_grade)
        if @roster.key?(student_grade)
            @roster[student_grade] << student_name
        else
            @roster[student_grade] = []
            @roster[student_grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       @roster.each_value do |names|
            names.sort!
       end
    end
end

