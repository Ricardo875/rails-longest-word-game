class GamesController < ApplicationController
  def new
    alphabet = ('A'..'Z').to_a
    @letters = Array.new(10) { alphabet.sample }
  end

  def score
    @letters = params[:letters]
    @attempt = params[:attempt]
  end

  def game

  end

  MESSAGES = {
    message1: "Hmmm, #{@attempt} does not come from the grid.",
    message2: "#Huh...{@attempt}? That's not an English word mate.",
    message3: "Well done!"
  }

end
