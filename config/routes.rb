Portal::Application.routes.draw do
  resources :proyectos_users

  resources :proyectos_usuarios

  resources :integrantes

  resources :actas

  resources :foros

  resources :respuestas

  resources :comentarios

  resources :articulos

  resources :proyectos

  resources :eventos

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end