Rails.application.routes.draw do
 root 'book#list'
 
 get '/hello', to: 'pages#hello'
 get 'book/list'
 get 'book/new'
 post 'book/create'
 patch 'book/update'
 get 'book/show'
 get 'book/edit'
 get 'book/delete'
 get 'book/update'
 get 'book/show_subjects'
end
