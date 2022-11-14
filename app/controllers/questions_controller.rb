class QuestionsController < ApplicationController
  def ask
    @asking = params[:asking]
  end

  def answer
    if params[:asking] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:asking].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
