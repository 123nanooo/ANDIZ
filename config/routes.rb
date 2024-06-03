Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'flowers/:flower_id/likes' => 'likes#create'
  get 'flowers/:flower_id/likes/:id' => 'likes#destroy'
  get 'flowers/sahime' => 'flowers#sahime'
  get 'flowers/sakurakoti' => 'flowers#sakurakoti'
  get 'flowers/naginoki' => 'flowers#naginoki'
  get 'flowers/sinzyugai' => 'flowers#sinzyugai'
  get 'flowers/top' => 'flowers#top'

  resources :flowers do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'flowers#index'
 
  get 'perfumes/index' => 'perfumes#index'
get 'perfumes/question1' => 'perfumes#question1'
get 'perfumes/question2' => 'perfumes#question2'
get 'perfumes/question3' => 'perfumes#question3'
get 'perfumes/question4' => 'perfumes#question4'
get 'perfumes/question5' => 'perfumes#question5'
get 'perfumes/question6' => 'perfumes#question6'
get 'perfumes/question7' => 'perfumes#question7'
get 'perfumes/show1' => 'perfumes#show1'
get 'perfumes/show2' => 'perfumes#show2'
get 'perfumes/show3' => 'perfumes#show3'
get 'perfumes/show4' => 'perfumes#show4'
get 'perfumes/show5' => 'perfumes#show5'
get 'perfumes/show6' => 'perfumes#show6'
get 'perfumes/show7' => 'perfumes#show7'
get 'perfumes/show8' => 'perfumes#show8'

end
