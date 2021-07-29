# Write your code for the 'Bob' exercise in this file. Make the tests in
# `bob_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/bob` directory.

class Bob
  def self.upper?(c)
    c >= 'A' && c <= 'Z'
  end

  def self.question?(remark)
    last = remark.chars.last
    last == '?'
  end

  def self.all_upper?(remark)
    text = remark.gsub(/[^a-zA-Z]/,'')
    return false if text.size.zero?
    text.chars.all? { |c| upper?(c) }
  end

  def self.hey(remark)
    return 'Fine. Be that way!' if remark.strip.size.zero?
    return "Calm down, I know what I'm doing!" if self.question?(remark) && self.all_upper?(remark)
    return "Sure." if self.question?(remark.strip)
    return "Whoa, chill out!" if self.all_upper?(remark)
    'Whatever.'
  end
end
