class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new { |h, k| h[k] = [] }
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    roster[grade] << student_name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each {|grade, student_name| student_name.sort!}
  end

end