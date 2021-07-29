# Write your code for the 'Twelve Days' exercise in this file. Make the tests in
# `twelve_days_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/twelve-days` directory.
class TwelveDays
  def initialize
    @opening = 'On the %{key} day of Christmas my true love gave to me: '
    @sentence = [
      { key: 'first', item: 'and a Partridge in a Pear Tree' },
      { key: 'second', item: 'two Turtle Doves' },
      { key: 'third', item: 'three French Hens' },
      { key: 'fourth', item: 'four Calling Birds' },
      { key: 'fifth', item: 'five Gold Rings' },
      { key: 'sixth', item: 'six Geese-a-Laying' },
      { key: 'seventh', item: 'seven Swans-a-Swimming' },
      { key: 'eighth', item: 'eight Maids-a-Milking' },
      { key: 'ninth', item: 'nine Ladies Dancing' },
      { key: 'tenth', item: 'ten Lords-a-Leaping' },
      { key: 'eleventh', item: 'eleven Pipers Piping' },
      { key: 'twelfth', item: 'twelve Drummers Drumming' }
    ]
  end

  def call
    result = []
    @sentence.each_with_index do |sentence, index|
      line = @opening % sentence
      result << if index.zero?
                  "#{line}a Partridge in a Pear Tree"
                else
                  line + @sentence[0..index].reverse.map { |s| s[:item] }.join(', ')
                end
    end
    "#{result.join(".\n\n")}.\n"
  end

  def self.song
    new.call
  end
end
