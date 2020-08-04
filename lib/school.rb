class School

    attr_accessor :name, :roster;

    def initialize (name)
        @name = name;
        @roster = {};
    end

    def add_student (name, grade)
        @roster[grade] ||= []
        @roster[grade] << name;
    end

    def grade (grade)
        return @roster[grade];
    end

    def sort
        sorted_roster = {};

      @roster.each {|grade, name|
            sorted_roster[grade] =  @roster[grade].sort;
        }
        return sorted_roster;
    end
end 
#whoops I used learn submit...added this change so I can repush using git cmds