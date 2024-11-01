class ZebraController < ApplicationController
  def play_rock
    choice = "rock"
  @random_move = ["They played rock!", "They played paper!", "They played scissors!"].sample
  @outcome = ""
  
  if @random_move == "They played rock!"
    
    @outcome = "We tied!"

  elsif @random_move == "They played paper!"
    @outcome = "We lost!"

  elsif @random_move == "They played scissors!"
    @outcome = "We won!"
  end

    render({ :template => "game_templates/play_rock"})
  end

  def play_paper
    choice = "paper"
  @random_move = ["They played rock!", "They played paper!", "They played scissors!"].sample
  @outcome = ""
  
  if @random_move == "They played paper!"
    
    @outcome = "We tied!"

  elsif @random_move == "They played scissors!"
    @outcome = "We lost!"

  elsif @random_move == "They played rock!"
    @outcome = "We won!"
  end
    
    render({ :template => "game_templates/play_paper"})
  end

  def play_scissors
    choice = "scissors"
    @random_move = ["They played rock!", "They played paper!", "They played scissors!"].sample
    @outcome = ""
    
    if @random_move == "They played scissors!"
      
      @outcome = "We tied!"
  
    elsif @random_move == "They played rock!"
      @outcome = "We lost!"
  
    elsif @random_move == "They played paper!"
      @outcome = "We won!"
    end
    
    render({ :template => "game_templates/play_scissors" })
  end

  def rules
    render({ :template => "layouts/rules" })
  end
end
