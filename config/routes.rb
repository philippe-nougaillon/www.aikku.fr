# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :clients
  # resources :projets
  # resources :posts

  controller :pages do
    get :home, to: 'pages#home'
    get :aikku_access, to: 'pages#aikku_access'
    get :aikku_sign, to: 'pages#aikku_sign'
    get :aikku_projects, to: 'pages#aikku_projects'
    get :aikku_plan, to: 'pages#aikku_plan'

    get :qui_sommes_nous, to: 'pages#qui_sommes_nous'
    get :nos_clients, to: 'pages#nos_clients'
    get :services, to: 'pages#services'
    get :logiciels, to: 'pages#logiciels'
    get :prestofacto, to: 'pages#prestofacto'
    get :guide_planning, to: 'pages#guide_planning'
    get :talea, to: 'pages#talea'
    get :mentions_légales, to: 'pages#mentions_légales', as: :mentions_legales
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'

    # get :portfolio, to: 'pages#portfolio'
    # get :blog, to: 'pages#blog'
  end

  root 'pages#home'
end
