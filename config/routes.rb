Rails.application.routes.draw do


  root 'tips#show'

  get '/search' => 'searches#index'

  get '/win10setup' => redirect('https://gist.github.com/JeffCohen/8b81c334c313340d50810a88c0df2bfb/raw')
  get '/macsetup' => redirect('https://gist.github.com/JeffCohen/60e8d8e3be66d4f167b1249fb1bd451a/raw')

  %w(assignments labs videos tips).each do |r|
    resources r, only: [:index, :show]
  end

  resources :sessions
  get '/schedule' => 'schedules#show'

  get ':topic(/:chapter)(/:page)' => 'pages#show'

end
