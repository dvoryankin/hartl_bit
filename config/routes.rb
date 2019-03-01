Rails.application.routes.draw do
  root 'static_pages#home'

  # get 'static_pages/help'
  get 'help' => 'static_pages#help'

  # get 'static_pages/about'
  get 'about' => 'static_pages#about'

  # get 'static_pages/contact'
  get 'contact' => 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
  # root 'application#hello'
  get 'pages/:slug', controller: 'pages', action: 'show'

  get 'news', controller: 'pages', action: 'news'


  get '/blog', controller: 'blog', action: 'index'

  get '/blog/:id', controller: 'blog', action: 'show'

  post '/blog', to: 'blog#create'

end
