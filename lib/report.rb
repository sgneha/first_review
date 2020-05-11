def report(grades)
  g_count = 0
  grades_arr = grades.split(',')
  grades_arr.each do |grade|
    if grade == 'Green'
      g_count += 1
    elsif grades == 'Red'
      'Red: 1'
    else
      'Amber: 1'
     end
  end
  "Green: #{g_count}"
end
