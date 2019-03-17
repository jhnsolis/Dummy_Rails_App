Rails.application.routes.draw do
  get 'greeter/hello'=> 'greeter#hello' #This means that when the browser gets a request greeter it will
                                        #rout it to the greeter controller and hello action
  get 'greeter/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
