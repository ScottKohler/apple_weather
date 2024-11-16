#require 'httparty'

class WeathersController < ApplicationController

  before_action :set_weather, only: [  :show, :edit, :update, :destroy ]  #:create, 
  skip_before_action :verify_authenticity_token  #ok
  #
  # before_action remove expired weathers
  #



#  what is expired:

#now > weather


  def index
    #@weathers = Weather.all.order( :id )
    @weathers = Weather.not_expired
    #now = Time.now.utc.to_datetime


    


    # @weathers.each do |w|
    #   if now > w.expire_date
    #     w.expired = true
    #     w.save
    #   end  
    # end



    #now = Time.now.utc.to_datetime
    # if now > @weathers.expire_date  #expires
    # #     'purge weather ar'            
    #     @weathers.expired=true   #not connected to anything
    #      #w.delete  -- ?
    # #else
    # end   

    #response=HTTParty.get('https://api.openweathermap.org/data/2.5/weather')
    # response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
    # p response.body


  end


  def create
    
    @weather = Weather.new{ weather_params }  

    #p "Weather New: " + @weather

    Rails.logger.debug 'Weather.new ' + @weather


    p "in create method"

    if @weather.save
      render json: @weather, status: :created
    else
      render json: @weather.errors, status: :unprocessable_entity
    end 
    
  end



  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_weather
      #Rails.logger.debug '_____________________________________in set_scale_inventory'
      @weather = Weather.find(params[:id])
      #@weather
    end

    def weather_params
      params.require(:weather).permit(:current_temperature, :zipcode)
    end
    # def weather_params
    #   #params.require(:scale_inventory_norm).permit(:name, :producer_id, :container, :inventory_image, :product_code)
    # end

    

  


end
