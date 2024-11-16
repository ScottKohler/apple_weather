class SearchesController < ApplicationController
  
  def new
    p 'Searches new'
    render :search
  end

  def search
    # params = {}    
    # params[:zip] = '11783' # this needs to be passed in from view  #todo - tie into view input...






    api_str = "http://api.weatherapi.com/v1/current.json?key=d9f9991ee0ba4671823162624232401&q=#{params[:zip]}&aqi=no"
    zip_code = "#{params[:zip]}"  #ok - this can vbbe removed
    

    #note the use of @Results for api data
    @results = HTTParty.get(api_str)
    # @results = response.body   #necessary?  stringifies response

    # @humidity = @results["current"]["humidity"]
    @temp_f = @results["current"]["temp_f"]
    # @wind_mph = @results["current"]["wind_mph"]
    #  @results["current"]["zip code"]

    @zip_code = zip_code
    @location_name = @results["location"]["name"]

    #write api data to Weather active record
    # w = Weather.new
    # ( :response_text => @results, 
    # :zipcode => @zip_code, 
    # :humidity => @humidity, 
    # :temp_f => @temp_f,  
    # :wind_mph => @wind_mph, 
    # :location_name => @location_name ) 

    w = Weather.new(
      :zipcode => @zip_code, 
      :current_temperature => @temp_f

    )
    w.save

  end
end
