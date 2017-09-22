class DeviceController < ApplicationController
  skip_before_action :verify_authenticity_token
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
   end 
end