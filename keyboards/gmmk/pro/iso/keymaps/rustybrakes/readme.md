# RustyBrakes' GMMK Pro ISO layout

This keymap was hugely based on the keymap by **@Jonavin**, you could almost call it a remix. I chose this keymap as a starting point due to the excellent **rgb_matrix_map.h** which gives an approachable way to create custom lighting. Jonavin also provided a great layer switching mechanism, an RGB timeout feature and a selection of other cool funtions.

- Four total layers, with scrolling `LShift` + `Rotary Encoder`
- Win key lock using `Fn` + `Win` like in Glorious Core firmware
- Add Scroll Lock, Break, NumLock to Fn layer
- Layer 2 provides arrows on WASD and additional nav keys + right hand numpad with 00; an be used for Alt Code entry
- Layer 2 PgUp, PgDn and End keys remapped to F13, F14 and F15 for macro mapping (try AutoHotkey!)

Additional encoder functionality:
- FN Layer - change rgb idle timeout
- holding Left shift, change layers
- holding right shift, Navigate page up/down
- holding Left Ctrl, navigate prev/next word
- holding Right Ctrl, changes RGB hue/colour
- holding Left Alt, change media prev/next track
- default is change volume

LED/RGB Functionality
- RGB idle timeout (default 5 minutes)
- Can be changed in FN layer with < and > or encoder
- setting to zero disables timeout
- indicators in FN layer using RGB in FN and number rows to show the timeout in minutes
- LED address location map as enum definition in rgb_matrix_map.h
- LED group lists for arrows, numpad, F row, num row, left and right side LEDs
- default startup in single mode with default colour
- Capslock, Scroll Lock, and Num Lock (not set) indicator on left side LED
- Layer indicator on right side LED
- Fn key light up red when Fn layer activate
- Win Key light up red when Win Lock mode enabled
- Layer 2 activation lights up Numpad area
- Fn + Z to turn off all RGB lights except rgb indicators; press again to toggle


rules.mk OPTIONS - Active features from userspace

STARTUP_NUMLOCK_ON = yes
- turns on NUMLOCK by default

ENCODER_DEFAULTACTIONS_ENABLE = yes
- Enabled default encoder funtions

IDLE_TIMEOUT_ENABLE = yes
- Enables Timer functionality; for RGB idle timeouts that can be changed dynamically

INVERT_NUMLOCK_INDICATOR
- inverts the Num lock indicator, LED is on when num lokc is off
 
## All layers diagram

Default layer
![image](https://user-images.githubusercontent.com/71780717/124177658-82324880-da7e-11eb-9421-b69100131062.png)

  

Fn Layer
![image](https://user-images.githubusercontent.com/71780717/131255937-06c9691b-835f-4c94-93e6-6d1dc3de272b.png)

  

Layer 2 (Caps Lock Mod)
![image](https://user-images.githubusercontent.com/71780717/124177683-8b231a00-da7e-11eb-9434-e2475f679a54.png)
