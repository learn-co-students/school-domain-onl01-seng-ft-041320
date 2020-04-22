class School

    attr_accessor :school, :school_name, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        (@roster.key?(grade)) ? (@roster[grade] << name) : (@roster[grade] = [name])
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            name.sort!
        end
    end
    
end

