Rails.application.routes.draw do
  
  namespace :admins_backoffice do
    get 'welcome/index' # rota para index do site
    resources :admins   # rota para administradores
    resources :subjects # rota para os assuntos/áreas
  end
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  
  devise_for :admins
  devise_for :users
  
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
