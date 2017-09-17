class DeviceController < ApplicationController
sp = SerialPort.new("/dev/cu.usbmodem1421", 115200, 8, 1, SerialPort::NONE)
   def list
   	 @devices = Device.all
   	 @connection = Connection.all
   end

   def sends
     puts "Hello World"
     sp = SerialPort.new("/dev/cu.usbmodem1421", 115200, 8, 1, SerialPort::NONE)
     sp.write("1637937167\n")
     render:refresh
   end

   def volume_up
     puts "Hello World"
     sp = SerialPort.new("/dev/cu.usbmodem1421", 115200, 8, 1, SerialPort::NONE)
     sp.write("1637888207\n")
     render:refresh
   end

   def volume_down
     puts "Hello World"
     sp = SerialPort.new("/dev/cu.usbmodem1421", 115200, 8, 1, SerialPort::NONE)
     sp.write("1637920847\n")
     render:refresh
   end

   def show_subjects
   @connection = Connection.find(params[:id])
	end

	def show
	  @device = Device.find(params[:id])
	end

	def edit
   @device = Device.find(params[:id])
   @connections = Connection.all
	end

   def new
   @device = Device.new
   @connections = Connection.all
   end

   def refresh
      Device.destroy_all
      file = File.read('data.json')
      @data_hash = JSON.parse(file)
      @connection_count = @data_hash['devices'].count
      @connection_count.times do |item|
          device = Device.new
          device.name = @data_hash['devices'][item]['name']
          device.ip_address = @data_hash['devices'][item]['ip']
          device.mac_address = @data_hash['devices'][item]['mac']
          device.connection_id = 1 if @data_hash['devices'][item]['type'] == 'wired'
          device.connection_id = 2 if @data_hash['devices'][item]['type'] == 'wireless'
          device.save
      end
      # client = Hue::Client.new
      # light = client.lights.first
      # light.on!
      #redirect_to :action => 'list'
   end

   def update
   @device = Device.find(params[:id])

	   if @device.update_attributes(device_params)
	      redirect_to :action => 'show', :id => @device
	   else
	      @connections = Connection.all
	      render :action => 'edit'
	   end

    end

def book_param
   params.require(:book).permit(:title, :price, :subject_id, :description)
end


   def new
   @device = Device.new
   @connections = Connection.all
   end

   def create
   @device = Device.new(device_params)

   if @device.save
      redirect_to :action => 'list'
   else
      @connections = Connection.all
      render :action => 'new'
   end

end

def device_params
   params.require(:devices).permit(:name, :ip, :mac_address, :connection_id)
end

end
