# code here!
class School

    attr_reader :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade
        if !@roster.include?(grade)
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.each do |grade, student_name|
            @roster[grade] = student_name.sort
        end
    end

end