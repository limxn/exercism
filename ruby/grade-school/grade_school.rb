# frozen_string_literal: true

# Write your code for the 'Grade School' exercise in this file. Make the tests in
# `grade_school_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/grade-school` directory.

class School
  def initialize
    @students = Hash.new { |hash, key| hash[key] = [] }
  end

  def add(name, grade)
    @students[grade] << name
  end

  def students_by_grade
    @students.sort_by { |k, _| k }.map do |grade, students|
      { grade: grade, students: students.sort }
    end
  end

  def students(grade)
    @students[grade].sort
  end
end
