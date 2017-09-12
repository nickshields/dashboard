class DeviceController < ApplicationController
   def list
   	 @devices = Device.all
    end
   
	def show
	  @device = Device.find(params[:id])
	end
end