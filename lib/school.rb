class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if roster.has_key?(grade)
            roster[grade] << student_name
        else
            roster[grade] = []
            roster[grade] << student_name
        end
    end

    def grade(grade_number)
        roster[grade_number]
    end

    def sort
        sorted_roster = {}
        roster.each {|grade, students| sorted_roster[grade] = students.sort}
        sorted_roster
    end

end
