class GamesController < ApplicationController
  def new
    letters = ("a".."z").to_a.shuffle
    @letters = letters[0..9]
  end

  def score
    @letters = params[:letters]
    word = params[:word].split("")
    if word.all? { |letter| @letters.include?(letter) }
      @result = "Congratulations"
    else
      @result = "Sorry but '#{word.join}' can't be built out of #{@letters}"
    end
  end
end

def valid
end

