class JankenController < ApplicationController
  def index
  end

  def result
    @player_hand = params[:hand].to_i
    @computer_hand = rand(3)
    case @computer_hand - @player_hand
    when 0
      @result = 'even'
    when 1, -2
      @result = 'win'
    else
      @result = 'lose'
    end
  end
end
