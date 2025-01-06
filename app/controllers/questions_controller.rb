# frozen_string_literal: true

# It includes methods for displaying, creating, editing, and deleting questions.
# class
class QuestionsController < ApplicationController
  def ask
    @questions = ['I met a girl last night', 'Can I eat some pizza?', 'I am going to work right now!']
  end

  def answer
    @answers = ["I don't care, get dressed and go to work!", 'Silly question, get dressed and go to work!', 'Great!']
    if params[:question]
      @question = params[:question]
      if @question.downcase.include?('girl')
        @answer = @answers[0]
      elsif params[:question].end_with?('?')
        @answer = @answers[1]
      else
        @answer = @answers[2]
      end
    end
  end
end
