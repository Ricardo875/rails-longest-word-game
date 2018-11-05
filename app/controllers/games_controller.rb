class GamesController < ApplicationController
  def new
    alphabet = ('A'..'Z').to_a
    @letters = Array.new(10) { alphabet.sample }
  end

  def score
    @letters = params[:letters]
    @attempt = params[:attempt].upcase
    @result = game(@attempt, @letters)
  end

  def game(attempt, letters)
    if !attempt.upcase.split("").all? { |lttr| attempt.upcase.count(lttr) <= letters.count(lttr) }
      result = "Woops... #{@attempt} does not come from the grid!"
    else
      result = "Nice, #{@attempt} is a valid English word. Well done!"
    end
    result
  end

end
