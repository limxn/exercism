# Write your code for the 'Word Count' exercise in this file. Make the tests in
# `word_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/word-count` directory.
class Phrase
  def initialize(inputs)
    @inputs = inputs
  end

  def word_count
    words = Hash.new(0)
    @inputs.scan(/[\w+']+/) do |word|
      word = word[1...word.size - 1] if word[0] == "'" && word[-1] == "'"
      words[word.downcase] += 1
    end
    words
  end
end
