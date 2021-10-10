def longest_common_prefix(strs)
  prefixes = []
  result = Hash.new('')

  max_word = strs.max_by(&:size)

  max_word.each_char.with_index do |ch, index|
    prefixes << (index == 0 ? ch : prefixes[index - 1] + ch)
  end

  prefixes.each.with_index do |prefix, index|
    strs.each do |str|
      if str[0..prefix.size - 1] != prefix
        return '' if index == 0
        return prefixes[index - 1] 
      else
        result[:prefix] = prefix
      end
    end
  end

  result[:prefix]
end


