class CountriesController < ApplicationController
  def index
    
    #@countries = Country.get_country(@search_term)
    all_countries = Country.all

    # If limit is passed in - do nothing
    # Otherwise, generate a random number between 5 and 25

    limit = params[:limit].to_i
    limit = rand(5..25) if limit.zero?

    @countries_to_display = all_countries.sample(limit)
    @countries_to_display.sort! { |a, b|  a["name"] <=> b["name"] }
  end
  def search_country
    #if no country is specified in the parameters (?country=France) show 'United'
    @search_term = params[:country]
    @search_term = 'United' if @search_term.nil?
    @countries_found = Country.get_country(@search_term)  
  end
end
