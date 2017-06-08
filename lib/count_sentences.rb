require 'pry'

class String

  def sentence?
      self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    library = ("a".."z").to_a
    count = 0
    new_sentence = self.downcase.delete(",").chars
    new_sentence.each_with_index {|char, idx| count += 1 if !library.include?(char) && (new_sentence[idx + 1] == " " || new_sentence[idx + 1] == nil)}
    count
  end
end
