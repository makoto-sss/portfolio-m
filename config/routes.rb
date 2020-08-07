Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  post "posts/:id/destroy" => "posts#destroy"

  mount ActionCable.server => "/cable"

  get "/" => "home#top"
  get "profile" => "home#profile"
  get "work" => "home#work"
  get "contact" => "home#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
