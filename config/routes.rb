# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users

  scope "(:locale)", locale: /en|fr/ do
    resources :clients
    # resources :projets
    # resources :posts

    controller :pages do
      get :home, to: "pages#home"
      get :aikku_access, to: "pages#aikku_access"
      get :aikku_plann, to: "pages#aikku_plann"
      get :aikku_coopcomm, to: "pages#aikku_coopcomm"
      get :qui_sommes_nous, to: "pages#qui_sommes_nous"
      get :nos_clients, to: "pages#nos_clients"
      get :services, to: "pages#services"
      get :contact, to: "pages#contact"
      post :contact, to: "pages#contact_submit"
      get :mentions_légales, to: "pages#mentions_légales", as: :mentions_legales
      
      # get :aikku_projects, to: 'pages#aikku_projects'
      # get :aikku_sign, to: 'pages#aikku_sign'
      # get :prestofacto, to: 'pages#prestofacto'
      # get :talea, to: 'pages#talea'
      # get :logiciels, to: 'pages#logiciels'
      # get :portfolio, to: 'pages#portfolio'
      # get :blog, to: 'pages#blog'
      # get :guide_planning, to: 'pages#guide_planning'
    end

    root "pages#home"
  end
end
