class Validator

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def call
    raise 'Not implemented yet'
  end
end

class YearValidator < Validator

  def call
    value > 0 && value <= 100
  end
end

class AgeValidator < Validator

  MIN_AGE_GANE = 18

  def call
    value >= MIN_AGE_GANE
  end
end

class WalletValidator < Validator

  MIN_GAME_BET = 10

  def call
    value >= MIN_GAME_BET
  end
end

class AgreementInputValidator < Validator

  ANSWERS = %w[y yes ye да д].freeze 

  def call
    ANSWERS.include?(value)
  end
end
