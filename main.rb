require 'sinatra'
require 'pi_piper'
set :bind, '0.0.0.0'

boolkun = false
led = PiPiper::Pin.new pin:20, direction: :out
get '/' do
  if boolkun
    led.on
  else
    led.off
  end
  boolkun = !boolkun
  "Hello I'm Raspberry Pi!!!!"
end
