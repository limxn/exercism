=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end
class Pangram
  ALPHABET = ('a'..'z').to_a.freeze
  def self.pangram?(input)
    ALPHABET.none? { |c| input.downcase.count(c).zero? }
  end
end
