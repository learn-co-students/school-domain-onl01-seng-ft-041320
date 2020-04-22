# code here!
# Wants a schoolwith the following
# name variable and getter
# roster variable and getter
# add_student writter, whichs adds to the roster with the grade as the key and the name as a value
# grade getter, returns the students in that grade
# sort getter, returns the roster that has students in each grade sorted alphabetically


class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    # if @roster.key?(grade) #checks if the key for that grade already exists in the roster hash
    #   @roster[grade] << name
    # else
    #   @roster[grade] = []
    #   @roster[grade] << name
    # end
    (@roster.key?(grade)) ? (@roster[grade] << name) : (@roster[grade] = [name])
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end
end
