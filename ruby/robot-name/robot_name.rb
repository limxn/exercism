class Robot

  attr_reader :name

  def initialize
    @name = SecureRandom.hex
  end

  def reset
    @name = SecureRandom.hex
  end

  def self.forget

  end
end