# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.

def assignment_score(grade_hash, student, assignment_num)
  # original
  # grade_hash.select { |name| name == student } [student] [assignment_num - 1]
  # p grade_hash
  # p student
  # p assignment_num
  scores = grade_hash[student]
  p scores
  return scores[assignment_num - 1]
end

#  ^^^^ if argument equals a student's name, give me the grade and number of
# that assignment


# Given a grade_hash and assignment number (as parameters),
# return all scores for that assignment. Note that Ruby counts
# arrays from 0, but we are referring to
# them as 1-10.

# "Give me the scores of assignment 5" ... for example

def assignment_scores(grade_hash, assignment_num)
  # grade_hash.map { |scores| scores[1] [assignment_num - 1] }

  # Call our existing method, the one we JUST wrote
  # since it does the work we really need. That is, for
  # this grade_hash and assignment_num AND the student
  # we are currently iterating, give me that student's
  # score for that assignment

 grade_hash.map do |student, scores|
   assignment_score(grade_hash, student, assignment_num)
   # grade_hash.map { |student, scores| assignment_score(grade_hash, student, assignment_num) }

 end
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)

  # total_scores = grade_hash.map { |scores| scores[1] [assignment_num - 1] }
  # total_scores.sum / grade_hash.length
  scores = assignment_scores(grade_hash, assignment_num)
  return scores.sum / scores.length
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)
  # assignments = grade_hash.take(1)[0][1].length
  # # returns 10
  # totals = grade_hash.transform_values { |grade| grade.sum }
  # # returns :nevada => 707
  # avg = totals.transform_values { |total| total / assignments }
  # # indiana => 81


end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
  if score >= 90
    "A"
  elsif score >= 80 && score <= 89
    "B"
  elsif score >= 70 && score <= 79
    "C"
  elsif score >= 60 && score <= 69
    "D"
  else
    "F"
  end
end

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
  averages(grade_hash).transform_values { |average| letter_grade(average) }
end

# Return the average for the entire class.
def class_average(grade_hash)
end

# Return an array of the top `number_of_students` students.
def top_students(grade_hash, number_of_students)
end
