class Player

  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def guessed_letter(letter_guessed)
    return letter_guessed
  end

  def losing_life(result)
      if result == false
        @lives -= 1
        if @lives = 0
          p "Game Over you have #{@lives} left"
        end
      end

  end

end
