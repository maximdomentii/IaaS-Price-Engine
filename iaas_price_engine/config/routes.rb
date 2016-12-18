Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get    '/help',        to: 'pages#help'
  get    '/about',       to: 'pages#about'
  get    '/contact',     to: 'pages#contact'

  get '*path', to: 'pages#not_found'
end
