Rails.application.routes.draw do
  get 'countries/index'
  get 'countries/search_country'

  get 'greeter/hello'=> 'greeter#hello' #This means that when the browser gets a request greeter it will
                                        #route it to the greeter controller and hello action
                                        #Use rake routes to see all the spcified routes
  get 'greeter/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
