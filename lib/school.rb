# code here!
class School

    attr_accessor :roster, :student, :grade

    def initialize(roster)
        @roster = {}
    end


    def add_student(student, grade)
        if @roster[grade].is_a?(Array)
            @roster[grade].push(student)
        else @roster[grade] = []
            @roster[grade].push(student)
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each {|key, value|
        sorted_roster[key] = value.sort
        }
        sorted_roster
    end

end
