=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
class PhoneNumber
  def self.clean(input)
    phone = input.gsub(/\D/,"")
    return nil unless phone.match?(/^1?[2-9]\d{2}[2-9]\d{6}$/)
    phone.chars.last(10).join
  end
end
