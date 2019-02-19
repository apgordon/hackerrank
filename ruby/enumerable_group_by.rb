# https://www.hackerrank.com/challenges/ruby-enumerable-group-by/problem

def group_by_marks(marks, pass_marks)
  marks.group_by {|key, value| value < pass_marks ? "Failed" : "Passed"}
end
