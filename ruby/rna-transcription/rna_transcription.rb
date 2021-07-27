# frozen_string_literal: true

class Complement
  TRANSITION = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  # @param [String] input
  def self.of_dna(input)
    input.each_char.map { |ch| TRANSITION[ch] }.join('')
  end
end
