class School
  attr_accessor :name, :roster

  def initialize(name)
    self.name = name
    self.roster = {}
  end

  def add_student(student_name, grade)
    if roster[grade]
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |k, v|
      sorted_roster[k] = v.sort
    end

    sorted_roster
  end

end
