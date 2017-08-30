class Scrabble

  def split_word(word)
    word.chars
  end

  def capitalize_letters(letters)
    letters.map { |char| char.upcase }
  end

  def get_letter_scores(cap_letters)
    cap_letters.map { |char| point_values[char] }
  end

  def score(word)
    return 0 if word.nil?
    letters = split_word(word)
    cap_letters = capitalize_letters(letters)
    letter_scores = get_letter_scores(cap_letters)
    letter_scores.sum
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10, ""=>0
    }
  end
end
