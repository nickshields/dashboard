class CommandsController < ApplicationController
  def power
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637937167\n")
  end


  def volume_up
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637888207\n")
    render:commands
  end

  def volume_down
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637920847\n")
    render:commands
  end

  def one
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637875967\n")
    render:commands
  end

  def two
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637908607\n")
    render:commands
  end

  def three
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637892287\n")
    render:commands
  end

  def four
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637924927\n")
    render:commands
  end

  def five
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637884127\n")
    render:commands
  end

  def six
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637916767\n")
    render:commands
  end

  def seven
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637900447\n")
    render:commands
  end

  def eight
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637933087\n")
    render:commands
  end

  def nine
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637880047\n")
    render:commands
  end

  def zero
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637912687\n")
    render:commands
  end

  def dot
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637909117\n")
    render:commands
  end

  def input
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637922887\n")
    render:commands
  end

  def recall
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637878007\n")
    render:commands
  end

  def mute
    sp = SerialPort.new("/dev/ttyACM0", 115200, 8, 1, SerialPort::NONE)
    sp.write("1637904527\n")
    render:commands
  end


end
