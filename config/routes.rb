Rails.application.routes.draw do
  get "/products/new" => "products#new", as: :new_product
  post "/products" => "products#create", as: :products
  get "/products/:id" => "products#show", as: :product
  get "/products" => "products#index"
  delete "/products/:id" => "products#destroy"
  get "/products/:id/edit" => "products#edit", as: :edit_product
  patch "/products/:id" => "products#update"
 
  root 'welcome#home'
  get('/about', { to: 'welcome#about', as: :about })
  get('/contact_us', { to: 'welcome#contact_us', as: :contact })
  # post('/contact_us', { to: 'contacts#create' })
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get('/home', to: 'welcome#home')
  
  
  post('/thank_you', to: 'welcome#thank_you')

  #bill splitter
  get '/bill_splitter', to: 'bill_splitter#new'
  post '/calculate_split', to: 'bill_splitter#create'
end
