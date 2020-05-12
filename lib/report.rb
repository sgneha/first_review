def report(grades)
  raise 'Please provide valid grades' if grades == ''

  g_count = 0
  r_count = 0
  a_count = 0
  uncounted = 0
  result = []
  grades_arr = grades.split(',')
  grades_arr.each do |grade|
    if grade == 'Green'
      g_count += 1
    elsif grade == 'Red'
      r_count += 1
    elsif grade == 'Amber'
      a_count += 1
    else
      uncounted += 1

    end
  end

  result << "Green: #{g_count}" if g_count != 0
  result << "Amber: #{a_count}" if a_count != 0
  result << "Red: #{r_count}" if r_count != 0
  result << "Uncounted: #{uncounted}" if uncounted != 0
  result.join("\n")
end
