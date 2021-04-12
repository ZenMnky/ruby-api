Rails.application.routes.draw { resources :articles, only: %i[index show] }
