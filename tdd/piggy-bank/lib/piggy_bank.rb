
class PiggyBank

  def initialize
    @coins = 0
  end

  def put_coins(coins)
    @coins += coins
  end

  def shake
    if @coins > 0
      return "Cling"
    else
      return "No money in Piggy Bank"
    end
  end

  def break
    return @coins
  end
end
