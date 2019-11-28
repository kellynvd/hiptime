# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :items do
    member do
      patch :complete
    end
  end
  root 'items#index'
end
