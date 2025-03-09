require './wallet'
require './validators'
require './cubic'

class BreakStepError < StandardError; end
class BreakChainError < StandardError; end
class ValidateError < StandardError; end

class Step
  def call
    raise 'Not impl yet'
  end
end

class NumberOfYearsStep < Step
  def call
    print "Сколько вам лет => "
    age = Integer(gets)

    raise ValidateError, 'Вы ввели не возраст' unless YearValidator.new(age).call
    raise ValidateError, 'Вы не имеете права играть в азартные игры' unless AgeValidator.new(age).call

  rescue ArgumentError
    raise ValidateError, 'Вы ввели не возраст'
  end
end

class CasinoStep < Step

  include WalletInjection
  include CubicInjection

  MIN_BET = 10

  def call
    raise BreakChainError, "У вас не осталось денег." unless WalletValidator.new(wallet).call 

    print "Хотите крутить? Y/N => "
    answer = gets.chomp.downcase

    raise BreakChainError, "У вас осталось денег #{wallet.with_currency}" unless AgreementInputValidator.new(answer).call

    wallet.increase(check_roll)
    puts "У вас осталось #{wallet.with_currency}"

    raise ValidateError, ''
  end
end

class StepProc
  STEPS = [NumberOfYearsStep, CasinoStep].freeze

  def call
    STEPS.each do |step|
      # crutches
      step.new.call
    rescue BreakStepError => e
      puts e.message unless e.message.empty?
      next
    rescue BreakChainError => e
      puts e.message unless e.message.empty?
      return
    rescue ValidateError => e
      puts e.message unless e.message.empty?
      retry
    end
  end
end
