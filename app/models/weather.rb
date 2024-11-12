class Weather < ApplicationRecord

    
    # def self.check_purge
        
    # end

    def self.not_expired
        where('created_at >= ?', DateTime.current - 5.hours)  #5.hours   .minutes
        #where('created_at >= ?', Date.current - 1.day)
        #where('created_at >= ?', Date.current - 12.hour)  
    end


    #def check_purge id
        #if(((Weather.find(11).created_at) + 5.minutes) < Time.now.utc.to_datetime)


#
        #revisit - something aint quite right..
    def create_weather current_temperature, zipcode


        p 'in bypassed model create weather()'
        #w = Weather.create(current_temperature: current_temperature, zipcode: zipcode)  #not convinced that creating this method is not redundant
        #w.expire_date = w.created_at + 2.days  #I do want this

        #now = Time.now.utc.to_datetime




        #move this to index action --> index action?   tyry it
        # now = Time.now.utc.to_datetime
        # if now > w.expire_date  #expires
        #     'purge weather ar'            
        #     ## w.expired=true   #not connected to anything

        #     w.delete  -- ?
        # #else
   
        # end   
        #move this to index action 

    end

    # def query_expired - no longer used
    #     #if now > expired
    #     #    #Sdelete it
    #     #    destroy
            
    # end

end


    