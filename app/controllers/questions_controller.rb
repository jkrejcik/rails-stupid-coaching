class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    @answer = ""
      if @question == ("I am going to work right now!" || "I am going to work right now!".upcase)
        return @answer
      elsif (@question.count "?") >= 1
        return @answer = "Silly question, get dressed and go to work!"
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
  end
end
