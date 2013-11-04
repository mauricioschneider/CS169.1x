class String

  def palindrome?
    tmp_string = self.downcase.gsub(/[^a-z]/,'')
    tmp_string.reverse == tmp_string
  end

  def count_words
    word_count = {}
    self.downcase.gsub(/[!.,-]/, '').split.each {|word| word_count.store(word, word_count[word].to_i + 1)}
    word_count
  end

  def anagram_groups
    self.downcase.split.group_by {|word| word.chars.sort}.values
  end

end

