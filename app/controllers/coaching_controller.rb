class CoachingController < ApplicationController
  def answer
    @your_message = params[:query]
    @coach_answer =
      if @your_message.downcase == "i am going to work right now!"
        ''
      elsif @your_message.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
    @coach_answer
  end

  def ask
  end
end
