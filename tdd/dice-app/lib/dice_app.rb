class Dice
  attr_reader :score_history

  def roll
    rand(1..6)
  end

  def roll_more(dice_num)
    sum = 0
    (dice_num).times { sum += rand(1..6) }
    return sum
  end

  def score(dice_num)
    @score_history = []
    for i in 1..dice_num
      @score_history << rand(1..6)
      i + 1
    end
    return @score_history
  end
end
