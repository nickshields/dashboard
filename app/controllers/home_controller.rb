class HomeController < ApplicationController

     def index
     @devices = Device.all
     @connection = Connection.all
     end

   def command
    #The hash function here includes everything for the tv and android box.
      tv_commands = Hash[	"power" => "1637937167\n", 
      					"input" => "1637922887\n",
      					"1" => "1637875967\n",
      					"2" => "1637908607\n",
      					"3" => "1637892287\n",
      					"4" => "1637924927\n",
      					"5" => "1637884127\n",
      					"6" => "1637916767\n",
      					"7" => "1637900447\n",
      					"8" => "1637933087\n",
      					"9" => "1637880047\n",
      					"0" => "1637912687\n",
      					"volPlus" => "1637888207\n",
      					"volMinus" => "1637920847\n",
      					"mute" => "1637904527\n",
                "chPlus" => "1637896367\n",
                "chMinus" => "1637929007\n",
                "menu" => "1637886167\n",
                "info" => "1637935127\n",
                "guide" => "1637917277\n",
                "up" => "1637892797\n",
                "left" => "1637902487\n",
                "down" => "1637925437\n",
                "right" => "1637918807\n",
                "enter" => "1637882087\n",
                "recall" => "1637878007\n",
                "exit" => "1637931047\n", 
                "box_power" => "2956\n",
                "box_keyboard" => "2968\n",
                "box_1" => "2945\n",
                "box_2" => "2946\n",
                "box_3" => "2947\n",
                "box_4" => "2948\n",
                "box_5" => "2949\n",
                "box_6" => "2950\n",
                "box_7" => "2951\n",
                "box_8" => "2952\n",
                "box_9" => "2953\n",
                "box_0" => "2944\n",
                "box_volPlus" => "2962\n",
                "box_volMinus" => "2963\n",
                "box_mute" => "2992\n",
                "box_chPlus" => "3004\n",
                "box_chMinus" => "2961\n",
                "box_menu" => "2954\n",
                "box_info" => "2973\n",
                "box_guide" => "2957\n",
                "box_up" => "3005\n",
                "box_left" => "3007\n",
                "box_down" => "3006\n",
                "box_right" => "2987\n",
                "box_enter" => "2988\n",
                "box_recall" => "2959\n",
                "box_exit" => "2959\n"
              ]
         sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
         sp.write(tv_commands[params[:command]])
   end

   def light
        #This function can be used to control philips hue lights
        #https://www.developers.meethue.com/
       hue_bridge = "http://192.168.1.101/"
       base_api = "http://192.168.1.101/api"
       user = "AwmF4s9V8hIOBprUQhI6KcIm7knNpLZN6BTZVVQ1"
       content_json="Content-Type:application/json"
       light_command = params[:command]

           light_number = Hash[  "lamp_on" => 2, 
                                "lamp_off" => 2,
                                "ceiling_light_1_on" => 1,
                                "ceiling_light_1_off" => 1,
                                "ceiling_light_2_on" => 3,
                                "ceiling_light_2_off" => 3

                ]
          set_light = Hash[    "lamp_on" => true, 
                                "lamp_off" => false,
                                "ceiling_light_1_on" => true,
                                "ceiling_light_1_off" => false,
                                "ceiling_light_2_on" => true,
                                "ceiling_light_2_off" => false
                ]
        light_to_control = light_number[light_command]
        light_setting = set_light[light_command]

       `curl #{base_api}/#{user}/lights/#{light_to_control}/state -H #{content_json} -X PUT -d '{"on":#{light_setting}}'`

   end
end
