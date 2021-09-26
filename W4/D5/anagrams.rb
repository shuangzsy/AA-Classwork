def first_anagram?(string_1, string_2)
  sub_strings = []
  (0...string_1.length).each do |i|
    (i...string_1.length).each do |j|
      sub_strings << string_1[i..j]
    end
  end

  sub_same_length = sub_strings.select{|ele| ele.length == string_2.lenght}

  sub_strings.each.with_index do |sub_string, i|
    next if sub_string.length != string_2.length
    if sub_string.each_char do |char|
      if !string_2.include?(char)
        next
      else
        return false
      end



end