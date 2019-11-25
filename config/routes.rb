Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'api/v1/sessions',
               registrations: 'api/v1/registrations'
             }

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show] do
        resources :projects do 
          resources :lists do 
            resources :tasks
          end
        end
        resources :notes
      end 
    end
  end

  # get 'api/v1/users/:id' , to: 'api/v1/users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
