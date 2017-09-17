class CommandsController < ApplicationController
  def power
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637937167\n")
  end


  def volume_up
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637888207\n")
  end

  def volume_down
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637920847\n")
  end

  def one
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637875967\n")
  end

  def two
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637908607\n")
  end

  def three
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637892287\n")
  end

  def four
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637924927\n")
  end

  def five
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637884127\n")
  end

  def six
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637916767\n")
  end

  def seven
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637900447\n")
  end

  def eight
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637933087\n")
  end

  def nine
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637880047\n")
  end

  def zero
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637912687\n")
  end

  def dot
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637909117\n")
  end

  def input
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637922887\n")
  end

  def recall
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637878007\n")
  end

  def mute
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637904527\n")
  end


#Mag Controls start here


def power_mag
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("908\n")
end

def keyboard
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("2968\n")
end

def up
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("957\n")
end

def down
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("3006\n")
end

def left
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("959\n")
end

def right
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("939\n")
end

def ok
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("2988\n")
end

def home
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("909\n")
end

def back
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("2959\n")
end

def list
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("906\n")
end

def vol_up
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("914\n")
end

def vol_down
  sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
  sp.write("2963\n")
end



end
