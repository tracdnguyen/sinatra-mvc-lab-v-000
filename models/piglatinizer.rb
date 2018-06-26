class PigLatinizer
  attr_accessor :text

  def piglatinize
    return "" if @text.empty?
    @text.gsub!(/\w+/) {|word| translate_word(word)}
  end

  def translate_word(text)
    text.concat(word.slice!(/^[^aeiou]*/i || ""))

    text.gsub!(/y$/, "yn") or word.gsub!(/([aeiou])$/, '\1y')

    text.capitalize! if word.downcase!

    text += 'ay'
  end
end
