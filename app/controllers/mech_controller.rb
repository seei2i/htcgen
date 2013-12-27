class MechController < ApplicationController
   def export
   end

   def grasp
   	  email = params[:exportemail]
      password = params[:exportpassword]
      creds = email + password
      outy = creds.to_s
      send_data(outy, :type => 'text/plain', :filename => "mySummary.txt" )
   end
end
