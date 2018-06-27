class PigLatinizer

  def piglatinize(word)
    prefix = word[0, %w(a e i o u).map{|vowel|
        "#{word}aeiou".index(vowel)}.min]
      "#{word[prefix.length..-1]}#{prefix}ay"
  end
end
