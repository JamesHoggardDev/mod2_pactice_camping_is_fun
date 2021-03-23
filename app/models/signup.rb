class Signup < ApplicationRecord

        belongs_to :camper
        belongs_to :activity


        def new
            @signup = Signup.new

            @campers = Camper.all                  
            
            @activities = Activity.all  
        end

end
