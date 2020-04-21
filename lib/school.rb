class School
  attr_accessor :name, :roster
   def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
roster[grade] ||= []
roster[grade] << name
end
def grade(grade)
    roster[grade]
  end
 def sort
 sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
     
     # expect(@school.roster).to eq({9 => ["Homer Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"], 7 => ["Blake Johnson"]})
    end
    sorted
  end
end