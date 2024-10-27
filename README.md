# ThTone.lua
## Summary
EdgeTX Lua Function script to play a tone representing the current position of the throttle stick. The throttle value is checked every 250+ msec; If the value changes by more than some noise window (25),
play a tone with a frequency f=800+(thr/2) Hz, where thr ranges from -1024 to 1024.

_Please note that this script was written hastily, and though it works, I would imagine there are more optimal solutions._
## Additional Information
The ThTone.lua script in this repo must be placed in the SCRIPTS/FUNCTIONS directory of your radio's SD card.

The Lua function script is set to always run for the current model by conifguring a Special Function as shown here:

![image](https://github.com/user-attachments/assets/5b1b1908-d755-4fef-a288-738c3b38ddd7)
