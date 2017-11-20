Rails.application.routes.draw do


  root 'pages#show'

  get '/:course(/:chapter)(/:page)' => 'pages#show'

end
