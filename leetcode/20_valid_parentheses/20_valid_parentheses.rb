CHARS = {
  '(' => ')',
  '{' => '}',
  '[' => ']', 
}.freeze

def is_valid(s)
  return true if s.empty?
  
  result = []
  
  s.each_char do |ch|
    if CHARS[ch]
      result << ch
    else
      return false if result.pop != CHARS.invert[ch]
    end
  end

  result.empty?
end
