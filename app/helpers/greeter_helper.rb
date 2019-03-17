module GreeterHelper
    def formatted_time(time) #This method is available for all views in the application
        #Time string in AM/PM Format
        time.strftime("%I:%M%p")
    end
end
