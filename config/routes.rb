# frozen_string_literal: true

Rails.application.routes.draw do
  get 'ask', to: 'questions#ask', as: 'ask'
  get 'answer', to: 'questions#answer', as: 'anwer'
end
