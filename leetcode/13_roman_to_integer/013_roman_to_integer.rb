def roman_to_int(s)
  roman = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  }
   
  sum = 0
  result = {}
  roman_values = s.each_char.map { |ch| roman[ch.to_sym] }

  roman_values.each.with_index do |value, index|
    next if result[index] || value.nil?

    next_el = roman_values[index + 1].to_i

    if value >= next_el
      sum += value
    else
      new_value = next_el - value
      sum += new_value
      result[index + 1] = new_value
    end
  end

  sum
end