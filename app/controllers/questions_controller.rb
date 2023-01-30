class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif (@question.count "?") >= 1
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.blank?
      @answer = 'I can`t hear you!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
