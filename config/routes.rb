Rails.application.routes.draw do
  resources :transakcje_jaskulas
  resources :zasoby_jaskulas
  resources :klienci_jaskulas
  get 'info_jaskula/wyswietl'
  get 'pierwszaJaskula' => 'info_jaskula#wyswietl'
  get 'drugaJaskula' => 'klienci_jaskulas#index'
  get 'trzeciaJaskula' => 'zasoby_jaskulas#index'
  get 'czwartaJaskula' => 'transakcje_jaskulas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
