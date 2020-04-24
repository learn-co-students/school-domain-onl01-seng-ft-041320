class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
      if roster.has_key?(grade)
        @roster[grade] << student_name
      else
        @roster[grade] = [student_name]
      end
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
    # def roster
    #     @roster
    # end

    # def add_student(some_student)
    #     roster << some_student
    # end
end