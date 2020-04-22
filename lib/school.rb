# code here!
class School
  attr_reader :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.has_key?(grade)
    @roster[grade].push("#{name}")
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, names|
      sorted_roster[grade] = [] if sorted_roster[grade] == nil
      sorted_roster[grade] = names.sort
    end
    sorted_roster
  end

end
