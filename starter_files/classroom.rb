def assignment_score(grade_hash, student, assignment_num)
  scores = grade_hash[student]
  return scores[assignment_num - 1]
end

def assignment_scores(grade_hash, assignment_num)
 grade_hash.map do |student, scores|
   assignment_score(grade_hash, student, assignment_num)
 end
end

def assignment_average_score(grade_hash, assignment_num)
  scores = assignment_scores(grade_hash, assignment_num)
  return scores.sum / scores.length
end

def averages(grade_hash)
 grade_hash.transform_values do |scores|
   scores.sum / scores.length
end

def letter_grade(score)
  case score
  when 90..Float::INFINITY
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  when 0..59
    "F"
  end
end

def final_letter_grades(grade_hash)
grade.hash.transform_values do |scores|
  average = scores.sum / scores.length
  letter_grade(scores.sum / scores.length)
  end
end

def class_average(grade_hash)
  hash = averages(grade_hash)
  average_scores = hash.value
  return average_scores.sum / average_scores.length
end

def top_students(grade_hash, number_of_students)
  hash_of_averages = averages(grade_hash)
  sorted_hash_of_averages = hash_of_averages.sort_by { |student, average| -average }
  top_students = sorted_hash_of_averages.first(number_of_students)
  return top_students.to_h.keys.
end
