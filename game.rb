class Game

  attr_accessor :player, :hiddenword, :guessed_letter

  def initialize(player, hiddenword)
    @player = player
    @hiddenword = hiddenword
    @guessed_letter = []
  end


  def add_guessed_letter(guessed_letter)
      @guessed_letter.push(guessed_letter)
  end

  def reveal_letter(hidden_word, letter_guessed)
    letter_location =[]
    for letter in hidden_word
      if letter == letter_guessed
        letter_location.push(hidden_word.index(letter))
      end
    end
    return letter_location
  end

  def is_letter_in_hidden_word(hidden_word,letter_guessed)
  letter_location =[]
    for letter in hidden_word
      if letter == letter_guessed
        letter_location.push(hidden_word.index(letter))
      else
        return false
      end
    end
    return letter_location
  end
end
