# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/users/list_users', to: 'user#list_users'
  get '/glampings/list_glampings', to: 'glamping#list_glampings'
  get '/glampings/list_glampings_details/:id', to: 'glamping#list_glampings_details'

  # Defines the root path route ("/")
  # root "articles#index"
end
