class HomeController < ApplicationController
   def show
     @devices = Device.all
   	 @connection = Connection.all
   end
end
