class GreeterController < ApplicationController
  def hello
    random_names = ["John", "Lucia", "Mike"]
    @name = random_names.sample

    @time = Time.now
    
    @times_displayed ||= 0 #Consider that these variables are not persistent between requests
    @times_displayed += 1  #You need to store them in a DB or Session if you want to access them later
  end
  def goodbye
  end
end
