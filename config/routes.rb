Rails.application.routes.draw do


  root 'pages#show'

  get ':topic(/:chapter)(/:page)' => 'pages#show'

end
