# esp32-lua-libraries
Lua libraries for ESP32 that I find handy. These are all available inside the sample code at http://chilipeppr.com/esp32 which is a web IDE for ESP32 devices.

# ESP32 Lua Websocket Library
A websocket client for ESP32 in pure Lua. This library is used by many other libraries in the sample code inside the ChiliPeppr ESP32 workspace. 
The client is lightweight and has no dependencies 
other than the standard libraries available in the NodeMCU for ESP32 firmware that is also provided from the ChiliPeppr ESP32 workspace http://chilipeppr.com/esp32.

The websocket client only handles the text payload, which works well for most. It would be quite easy to extend it to handle other payloads.

The client does ping/pong to keep connections alive. It works great on Wemos, TTGO, Lolin, Sparkfun, and Adafruit ESP32 devices.

# ESP32 Lua Joystick Library
A library for reading on two ADC ports on ESP32 the voltage from an analog joystick like those you can buy on aliexpress.com for $2. Has code 
to debounce the ADC values when the joystick is at the center. Has several callback routines for XY position updates. See more information at http://chilipeppr.com/esp32 