Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins

  namespace :admin do
    resources :dashboards
    resources :categories do
     member do
      get :category_show
    end
    resources :sub_categories
  end
  resources :advices do 
   member do 
    put :visible
  end
end
resources :offer_managers
resources :guides
resources :news_letters
resources :products
resources :banners do 
  member do 
    put :visible
  end
end
resources :stocks
end


root 'homes#index'
resources :homes do 
  collection do
    get 'index'
    get 'show'
    get 'offers'
    get 'product_flags'
    get 'how_to_buy'
    get 'faq'
    get 'payment'
    get 'shipment'
    get 'terms'
    get 'return_policy'
    get 'new_news_letter'
  end
end

end
