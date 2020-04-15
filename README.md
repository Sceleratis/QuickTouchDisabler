# QuickTouchDisabler
 Quickly enable or disable the touchscreen on Windows 10 touchscreen devices.

I have a Lenovo Thinkpad X1 Yoga 4th gen. It's a 2-in-1 device that comes with a Wacom pen.

I often like to draw or write using the pen, however the touchscreen remains active until the pen is within a few centimeters of the screen. This is a problem as my hand will easily accidentally tap the 14-inch screen. 

An easy way to avoid this problem is to just disable the touch screen entirely as the pen will work without it, however doing this requires a trip to the device manager which can be somewhat of a pain. 

To solve this issue, I have this little script which will toggle the touch screen quickly without having to open Device Manager. I have the .bat file bound to the second button on my thinkpad's pen so I can quickly and easily toggle the touchscreen. 

Uploaded this to GitHub even though it's stupidly simple just in case someone else has a similar situation or I ever happen to lose it in a PC reset or something. The PowerShell script needs to be ran as an administrator. Normally, this could be done from another ps1 script or from within the same file possibly, but Lenovo's pen stuff doesn't support running ps1 files, hence the existence of the bat file which will run the ps1 file. 

When ran, this will create a notification telling you it enabled/disabled the touchscreen. You *should* also be prompted to run the ps1 script as an administrator if you have UAC prompts enabled.

BE WARNED! This should ONLY be used on a device that has a pen and/or keyboard. If you ONLY have a touchscreen and you use this, you will basically be unable to use your device until you re-enable the touchscreen using a mouse and keyboard or something. So, if your only form of input is a touchscreen, don't use this...

Also, obviously any pens that actually use the touchscreen (like ones that emulate a finger) won't work with the touchscreen disabled. In my case the pen doesn't use the touchscreen itself, it uses Wacom spooky pen magic. Mileage may vary.

Keep the bat in the same folder as the ps1 or it's not going to work. You can also run the ps1 by itself if you want but you'll need to do it as an admin. 

Allllssssoooooo if you rather control the touchscreen's disabled state instead of toggling it, you can pass a 1 as the first argument to the ps1 script to disable it, or a 0 to enable it. Ez pz. 