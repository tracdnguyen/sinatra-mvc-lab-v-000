class PigLatinizer
  attr_accessor :text

  def translate
    return "" if @text.empty?
    @text.gsub!(/\w+/) {|word| translate_word(word)}
  end

  def piglatinize(text)
    text.concat(text.slice!(/^[^aeiou]*/i || ""))

    text.gsub!(/y$/, "yn") or word.gsub!(/([aeiou])$/, '\1y')

    text.capitalize! if word.downcase!

    text += 'ay'
  end
end
