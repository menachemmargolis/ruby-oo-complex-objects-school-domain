require'pry'
class School
attr_reader :roster, :name
 
    def initialize(name)    
        @name = name    
        @roster = {}  
    end
    
    def add_student(name, grade)
       roster[grade] ||= []
       roster[grade] << name
    end
    
    def grade(grade)
       return roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end
    
            
        
    

end

#j=School.new("yeshivah")

#binding.pry
