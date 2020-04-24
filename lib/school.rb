# code here!
require "pry"
class School

  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
    # binding.pry
  end

  def add_student(name, grade)
      if @roster[grade] == nil
        @roster[grade] = []
        @roster[grade] << name
      else
        @roster[grade] << name
      end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #I want to iterate over the array sorting by key
    #when the lowest key is found I wouand to loop over the array and sort by names
    #add key-value pairs to an array that is returned  to the user
    @roster.each do |key, values|
      @roster[key] = values.sort
    end
  end


end

# school = School.new("Bayside High School")
# # roster1 = {}
# school.add_student("Screech", 11)
# binding.pry
