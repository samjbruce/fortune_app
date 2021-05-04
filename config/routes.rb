Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/fortune_path", controller: "my_examples", action: "fortune_method"
  get "/random_numbers_path", controller: "my_examples", action: "random_numbers_method"
  get "/song_path", controller: "my_examples", action: "song_method"
  get "/counter_path", controller: "my_examples", action: "counter_method"
end
