Rails.application.routes.draw do


  root 'tips#show'

  get '/win10setup' => redirect('https://gist.github.com/JeffCohen/8b81c334c313340d50810a88c0df2bfb/raw')

  %w(assignments labs videos tips).each do |r|
    resources r, only: [:index, :show]
  end

  resources :sessions

  get ':topic(/:chapter)(/:page)' => 'pages#show'



end
