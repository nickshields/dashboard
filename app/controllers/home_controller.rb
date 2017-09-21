class HomeController < ApplicationController
   before_action :authorize
   def show
     @devices = Device.all
   	 @connection = Connection.all
   end

   def eric
     @devices = Device.all
   	 @connection = Connection.all
   end
end
