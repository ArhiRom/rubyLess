module CubicInjection

  ROOT_SEED = 10
  GENERATION_TIME = 3
  FAILURE = -10
  SUCCESS_MULTIPLIER = 10

  # rly nachin?

	def check_roll
		rolls.one? ? success() : FAILURE
	end

  def success
    rolls.first * SUCCESS_MULTIPLIER
  end

  def rolls
    @rolls = GENERATION_TIME.times.map { rand(ROOT_SEED) }.uniq.tap do |rolls|
      puts rolls
    end
  end
end
