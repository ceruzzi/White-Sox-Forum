Rails.application.routes.draw do


  root 'subforums#index'

  get '/subforums' => 'subforums#index'
  get '/subforums/new' => 'subforums#new'
  post '/subforums'=>'subforums#create'
  get '/subforums/:id' => 'subforums#show', :as=>'subforum'
  get '/subforums/:id/edit' => 'subforums#edit',:as=>'edit_subforum'
  patch '/subforums/:id' => 'subforums#update'
  delete '/subforums/:id' => 'subforums#destroy'

  get '/topics' => 'topics#index', :as=>'topic_index'
  get '/topics/new' => 'topics#new'
  post '/topics/:subforum_id'=>'topics#create'
  get '/topics/:id' => 'topics#show', :as=>'topic'
  delete '/topics/:id' => 'topics#destroy'
  get '/topics/:id/edit' => 'topics#edit',:as=>'edit'
  patch '/topics/:id' => 'topics#update'

  post '/comments/:topic_id'=>'comments#create', :as=>'comments'
  get '/comments/:id/edit' => 'comments#edit',:as=>'edit_comment'
  patch '/comments/:id' => 'comments#update'

  get '/tags' => 'tags#index', :as=>'tag_index'
  get '/tags/:id' => 'tags#show', :as=>'tag'
  post '/tags/:topic_id'=>'tags#create'

  get '/signup'=> 'users#new'
  post '/users'=> 'users#create'
  get '/users/:id'=> 'users#show', as: :user

  get '/login'=> 'sessions#new'
  post '/sessions'=> 'sessions#create'
  get '/logout'=> 'sessions#destroy'
  
  get '/donations'=> 'donations#new'
  post '/donate'=> 'donations#create'

end
