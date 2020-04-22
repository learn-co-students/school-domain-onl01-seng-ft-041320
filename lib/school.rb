# code here!
class School
    attr_reader :name, :roster 

    def initialize(name)
        @name = name
        @roster = {} # OR -  @roster = Hash.new {|h, k| h[k] = []}
    end

    def add_student (name, grade)
        if @roster.has_key?(grade)  #if you wrote line 7 - remove this 
            @roster[grade] << name  # This would change to -  self.roster[grade] << name
        else                        #if you wrote line 7 - remove this
            @roster[grade] = [name] #if you wrote line 7 - remove this
        end 
    end

    def grade(grade)
        @roster[grade]  # OR self.roster[grade]
    end

    def sort
        self.roster.each do |grade, students|
            students.sort!
        end
    end


end

# [] = ""
# roster_hash = {
#     grade_levels => []
# }
# roster << add_student