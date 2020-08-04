# code here!
class School
    attr_reader 
    attr_writer
    attr_accessor :roster

    def initialize (name)
        @name = name
        @roster ={}
    end
    def add_student (stud_name, grade_nm)
        if @roster[grade_nm]
            @roster[grade_nm].push(stud_name)
        else
            @roster[grade_nm] = [stud_name]
        end
    end
    def grade (grade_nm)
        @roster[grade_nm]
    end
    def sort
        @roster.each do |grd, students|
            students.sort!
        end
    end
end