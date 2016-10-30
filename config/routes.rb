Rails.application.routes.draw do

  mount GrapeSwaggerRails::Engine => "/swagger"
  resources :book_images
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
