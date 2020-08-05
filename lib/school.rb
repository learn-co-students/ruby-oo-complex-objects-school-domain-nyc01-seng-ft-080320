# code here!
class School
    attr_accessor :school, :roster
  def initialize(school)
    @school = school
    @roster = {}
  end
  def add_student(student, grade)
    roster[grade] ||=[]
    roster[grade]<< student
  end
  def grade(num)
    roster.detect do |x,y|
      if x == num
        return y
      end
   end
  end
  def sort 
    new_hash = {}
     roster.sort_by do |x,y|
       new_hash[x] = y.sort
     end
     new_hash
  end
  end