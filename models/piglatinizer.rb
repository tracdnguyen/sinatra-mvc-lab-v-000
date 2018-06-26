class PigLatinizer
  attr_accessor :text

  def translate
    return "" if @text.empty?
    @text.gsub!(/\w+/) {|word| translate_word(word)}
  end

  def piglatinize(text)
    text.concat(text.slice!(/^[^aeiou]*/i || ""))

    text.gsub!(/y$/, "yn") or text.gsub!(/([aeiou])$/, '\1y')

    text.capitalize! if text.downcase!

    text += 'ay'
  end
end
