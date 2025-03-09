class Wallet

  # There we can using singletone pattern

  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_s
    value.to_s
  end

  def with_currency
    "#{self}#{currency}"
  end

  def increase(add)
    @value += add
  end

  def >=(val)
    @value >= val
  end

  private

  # MAKE LATER
  def currency
    '$'
  end
end

class WalletSource

  # THIS IS STUB
  # this class needed for some ops for
  # wallet operation (e.g. save, load, or external integrations)
  DEFAULT = 1000

  def load_wallet
    DEFAULT
  end
end

class WalletBuilder
  attr_reader :source

  def add_wallet_source(source)
    @source = source

    self
  end

  def build
    Wallet.new(
      source.new.load_wallet
    )
  end
end

module WalletInjection
  # NEED FOR GOOD USE SOME PARAMS IN STEPS

  def wallet
    @@wallet ||= WalletBuilder.new.add_wallet_source(WalletSource).build
  end
end
