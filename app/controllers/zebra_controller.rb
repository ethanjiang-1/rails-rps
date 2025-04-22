class ZebraController < ApplicationController
  def home
    render({:template => "game_templates/home"})
  end
  
  def giraffe
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = eval_move(@user_move, @computer_move)

    render({:template => "game_templates/play_rock"})
  end

  def elephant
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = eval_move(@user_move, @computer_move)

    render({:template => "game_templates/play_paper"})
  end

  def lion
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = eval_move(@user_move, @computer_move)

    render({:template => "game_templates/play_scissors"})
  end

  def eval_move(user_move, computer_move)
    if user_move == computer_move
      return "We tied!"
    elsif (user_move == "rock" && computer_move == "scissors") ||
          (user_move == "paper" && computer_move == "rock") ||
          (user_move == "scissors" && computer_move == "paper")
      return "We won!"
    else
      return "We lost!"
    end
  end
end
