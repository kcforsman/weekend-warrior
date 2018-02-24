def leap_year?(date)
  return true if date % 400 == 0
  return true if date % 100 != 0 && date % 4 == 0
  return false
end
