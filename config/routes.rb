Rails.application.routes.draw do
  

  resources :collaborations
  resources :feedbacks
  resources :groups
  resources :submissions
  resources :presences, except: [:new, :edit]
  
  resources :participations, except: [:new, :edit]

  resources :users, except: [:new, :edit]

  resources :selective_processes, except: [:new, :edit]

  resources :courses, except: [:new, :edit]

  resources :materials, except: [:new, :edit]

  resources :lessions, except: [:new, :edit]

  resources :activities, except: [:new, :edit]
  
  resources :subjects, except: [:new, :edit]


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
