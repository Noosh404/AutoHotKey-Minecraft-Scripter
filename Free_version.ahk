#SingleInstance Force
#MaxThreadsPerHotkey 2
x = 123
bx = 123
ex = 123
speed = 400

;=============================================================================================================================================================
Gui, Add, Tab3, x-8 y-1 w500 h300 , Info|Config|Apps|Settings
Gui, Show, w500 h300, Diggy's Skyblock Helper FREE
Gui, Tab, 4
Gui, Add, Text,y280 x450, ver 0.5
Gui, Add, Button, default x10 y35, AutoCraft
Gui, Add, Button, default x10 y60, Advertise Bot
Gui, Add, Button, default x10 y85, Fast Crafter

Gui, Tab, 3
Gui, Add, Button, default x10 y60, AutoSize (1280 x 720)
Gui, Add, Text,y280 x450, ver 0.5


Gui, Tab, 1
Gui, Add, Text,y280 x350, Free V .6
Gui, Add, Text,y35 x10, Welcome to the Free Skyblock Helper!    
Gui, Add, Text,y55 x10, To get started head over to the config tab and select your slot, and backpack/ender chest size. 
Gui, Add, Text,y75 x10, Then go to the Apps page and press the AutoSize button.
Gui, Add, Text,y100 x10, Afterwards head to the Settings tab and select your helper option.
Gui, Add, Text,y115 x10, Head over to an NPC and press "5" to start
Gui, Add, Text,y130 x10, Press "F8" To pause the script. Press "F9" to end the script
Gui, Add, Text,y280 x10, Credits: @Ryandigzz @Noosh
Gui, Add, Text,y145 x10, To unlock full features to include LARGE and GREATEST backpack, fast speeds, and all slots go to:
Gui, Add, Text,y160 x10, https://shoppy.gg/@Ryandigzz
Gui, Tab, 2
Gui, Add, Text, y35 x10, Item to buy:
Gui, Add, Button, default y50 x10, Slot_1
Gui, Add, Button, default y50 x65, Slot_2
Gui, Add, Button, default y50 x120, Slot_3
Gui, Add, Button, default y50 x175, Slot_4
Gui, Add, Button, default y50 x230, Slot_5

Gui, Add, Text, y100 x10, BackPack Size:
Gui, Add, Button, default y125 x10, Small
Gui, Add, Button, default y125 x65, Medium

Gui, Add, Text, y150 x10, Enderchest Size:
Gui, Add, Button, default y175 x10, eSmall
Gui, Add, Button, default y175 x65, eMedium

Gui, Tab  
Gui, Show
return
ButtonOK:
GuiClose:
GuiEscape:
Gui, Submit  ; Save each control's contents to its associated variable.
ExitApp

;=============================================================================================================================================================
;                              AUTO CRAFT CONFIG V

ButtonUltraFast:
ultrafast := !ultrafast
if ultrafast
   msgbox, Ultra Fast Selected!
      speed := 25
    return
    
if !ultrafast
    msgbox, Ultra Fast Unselected!
    speed := 75
    return

ButtonFast:
fast := !fast
if fast
   msgbox, Fast Selected!
   speed := 50
   return
    
if !slot_2
   msgbox, Fast Unselected!
   speed := 75
   return

ButtonNormal:
normal := !normal
if normal
   msgbox, Normal Selected!
      speed := 75
    return
    
if !normal
    msgbox, Normal Unselected!
    speed := 75
    return

ButtonSlow:
slow := !slow
if slow
   msgbox, Slow Selected!
   speed := 200
   return
    
if !slow
   msgbox, Slow Unselected!
   speed := 75
   return






ButtonSlot_1:
slot_1 := !slot_1
if slot_1
   msgbox, Slot 1 Selected!
      x := 530 
  y := 235
    return
    
if !slot_1
    msgbox, Slot 1 Unselected!
    x := 123
    return

ButtonSlot_2:
slot_2 := !slot_2
if slot_2
   msgbox, Slot 2 Selected!
      x := 565 
  y := 235
    return
    
if !slot_2
    msgbox, Slot 2 Unselected!
    x := 123
    return

ButtonSlot_3:
slot_3 := !slot_3
if slot_3
   msgbox, Slot 3 Selected!
      x := 605 
  y := 235
    return
    
if !slot_3
    msgbox, Slot 3 Unselected!
    x := 123
    return

ButtonSlot_4:
slot_4 := !slot_4
if slot_4
   msgbox, Slot 4 Selected!
      x := 640 
  y := 235
    return
    
if !slot_4
    msgbox, Slot 4 Unselected!
    x := 123
    return

ButtonSlot_5:
slot_5 := !slot_5
if slot_5
   msgbox, Slot 5 Selected!
      x := 675 
  y := 235
    return
    
if !slot_5
    msgbox, Slot 5 Unselected!
    x := 123
    return


;=============================================================================================================================================================
;                                   BACKPACK SIZE CONFIG V  

Buttonsmall:
small := !small
if small
   msgbox, Small Selected!
     bx := 500
	by := 350
  backpack := True
   return
    
if !small
    msgbox, Small Unselected!
    bx := 123
    backpack := False
    return
    
ButtonMedium:
medium := !medium
if medium
   msgbox, Medium Selected!
   bx := 500
   by := 370
   backpack := True
   return
if !medium
    msgbox, Medium Unselected!
    bx := 123
    backpack := False
    return

ButtonLarge:
large := !large
if large
   msgbox, Large Selected!
   bx:= 500
   by:= 390
   backpack := True
   return
if !large
    msgbox, Large Unselected!
    bx := 123
    backpack := False
    return

ButtonGreater:
greater := !greater
if greater
   msgbox, Greater Selected!
   bx:= 500
   by:= 410
   backpack := True
   return
if !large
    msgbox, Greater Unselected!
    bx := 123
    backpack := False
    return


ButtoneSmall:
esmall := !esmall
if esmall
   msgbox, Small Selected!
   bx:= 500
  by := 385
  enderchest := True
    return
if !esmall
    msgbox, Small Unselected!
    bx := 123
    enderchest := False
    return

ButtoneMedium:
emedium := !emedium
if emedium
   msgbox, Medium Selected!
   bx:= 500
  by := 425
  enderchest := True
    return
if !emedium
    msgbox, Medium Unselected!
    bx := 123
    enderchest := False
    return

7::
msgbox, "%x%"


;=================================================================================================================================================



ButtonAutoSize(1280x720):
Winget, wintitle, PID, Minecraft

WinActivate, ahk_pid %wintitle%

WinGetPos,,, Width, Height, ahk_pid %wintitle%
WinMove, ahk_pid %wintitle%,, 0, 0, 1280 , 720
return

;=============================================================================================================================================================
;                            FAST CRAFTER V

ButtonFastCrafter:
isEnabled := !isEnabled

if isEnabled
   msgbox, Fast craft is enabled, press 8 to start
if !isEnabled
    msgbox, disabled


8::
if isEnabled
{
 send,9
sleep 400
mouseclick, right
sleep 400
Mousemove, 640 , 305 , Minecraft
sleep 400
Mouseclick, left
sleep 400
Send {LShift Down}
Sleep 400
MouseMove, 495, 445, Minecraft ; First slot
MouseClick, left
Sleep 200
MouseMove, 535, 445, Minecraft ; second slot
MouseClick, left
Sleep 200
MouseMove, 565, 445, Minecraft ; third slot
Mouseclick, left
sleep 200
Mousemove, 605, 445, Minecraft ; fourth slot
MouseClick, left
Sleep 200
MouseMove, 635, 445, Minecraft ; fifth slot
Mouseclick, left
Sleep 400
MouseMove, 709, 274, Minecraft ; Crafted item
sleep 400
MouseClick, left
Sleep 200
MouseMove, 675, 445, Minecraft ; sixth slot
Mouseclick, left
Sleep 200
MouseMove, 715, 445, Minecraft ; 7th slot
Mouseclick, left
Sleep 200
MouseMove, 745, 445, Minecraft ; 8th slot
Mouseclick, left
Sleep 200
MouseMove, 785, 445, Minecraft ; 9th slot
Mouseclick, left
Sleep 200
MouseMove, 495, 475 Minecraft ; 10th slot
Mouseclick, left
Sleep 400
MouseMove, 709, 274, Minecraft ; Crafted item
Mouseclick, left
Sleep 400
MouseMove, 535, 475, Minecraft ; 11th
MouseClick, left
Sleep 250
MouseMove, 565, 475, Minecraft ; 12th
Mouseclick, left
sleep 250
Mousemove, 605, 475, Minecraft ; 13th
MouseClick, left
Sleep 250
MouseMove, 635, 475, Minecraft ; 14th
Mouseclick, left
Sleep 250
MouseMove, 675, 475, Minecraft ; 15th
Mouseclick, left
Sleep 400
MouseMove, 709, 274, Minecraft ; Crafted item
sleep 400
MouseClick, left
Sleep 200
MouseMove, 715, 475, Minecraft ; 16th
Mouseclick, left
Sleep 200
MouseMove, 745, 475, Minecraft ; 17th
Mouseclick, left
Sleep 200
MouseMove, 785, 475, Minecraft ; 18th
Mouseclick, left
Sleep 200
MouseMove, 495, 515, Minecraft ; 19th
MouseClick, left
Sleep 200
MouseMove, 535, 515, Minecraft ; 20th
MouseClick, left
Sleep 400
MouseMove, 709, 274, Minecraft ; Crafted item
sleep 400
MouseClick, left
Sleep 200
MouseMove, 565, 515, Minecraft ; 21st
Mouseclick, left
sleep 200
Mousemove, 605, 515, Minecraft ; 22nd
MouseClick, left
Sleep 200
MouseMove, 635, 515, Minecraft ; 23rd
Mouseclick, left
Sleep 200
MouseMove, 675, 515, Minecraft ; 24th
Mouseclick, left
Sleep 200
MouseMove, 715, 515, Minecraft ; 25th
Mouseclick, left
Sleep 400
MouseMove, 709, 274, Minecraft ; Crafted item
sleep 400
MouseClick, left
Sleep 200
Mouseclick, left
Sleep 200
MouseMove, 745, 515, Minecraft ; 26th
Mouseclick, left
Sleep 200
MouseMove, 785, 515, Minecraft ; 27th
Mouseclick, left
Sleep 200
MouseMove, 495, 555, Minecraft ; Hotbar 1
MouseClick,Left
Sleep 200
MouseMove, 531, 555, Minecraft ; Hotbar 2
MouseClick,Left
Sleep 200
MouseMove, 567, 555, Minecraft ; Hotbar 3
MouseClick,Left
Sleep 400
MouseMove, 709, 274, Minecraft ; Crafted item
sleep 400
MouseClick, left
Sleep 400
Send, Esc
sleep 400
send, 8
sleep 400
MouseClick, right
sleep, 400
MouseMove, %bx%, %by%, Minecraft ; First slot
sleep 400
MouseClick, left
Sleep 400
Send, Esc
sleep 400
Send, {LShift up}
return
}
else if !isEnabled
 msgbox, fast craft is disabled
return

;=============================================================================================================================================================
;                             ADVERTISE BOT V
ButtonAdvertiseBot:
Msgbox, Type message in chat, press enter then press F10!
return

F10::
loop{
send {9}
sleep 100
MouseClick, Right
sleep 300
MouseMove, 565,376 , Minecraft
sleep 300
MouseClick, Left
sleep 5000
send {t}
sleep 150
send {up}
sleep 150
send {enter}
sleep 150
send {9}
sleep 100
MouseClick, Right
sleep 300
MouseMove, 565,376 , Minecraft
MouseClick, Right
sleep 2000


}
return

;=============================================================================================================================================================
;AutoCrafter
5::
;                      BUYING V
if (x = 123)
 msgbox, select an item first!
else if (bx = 123)
 msgbox, select backpack size first!
else
{
 SetTitleMatchMode, 2
    SetControlDelay -1
loop {
MouseClick, Left
Sleep, 250
 MouseMove, %x%,%y%, Minecraft ; item
Sleep,250
MouseClick,Right
Sleep, 250
MouseMove, 715, 274, Minecraft ; Stack of 64
Sleep, 250
Loop 55 {

	MouseClick,Left
	Sleep 75
}
Send, Esc
;                          CRAFTING V
Sleep, 250
send, t
sleep 200
 send, /viewcraftingtable
 Sleep, 200
 send {enter}
Sleep, 150
Send {LShift Down}
Sleep 50
MouseMove, 495, 445, Minecraft ; First slot
MouseClick, left
Sleep %speed%
MouseMove, 535, 445, Minecraft ; second slot
MouseClick, left
Sleep %speed%
MouseMove, 565, 445, Minecraft ; third slot
Mouseclick, left
sleep %speed%
Mousemove, 605, 445, Minecraft ; fourth slot
MouseClick, left
Sleep %speed%
MouseMove, 635, 445, Minecraft ; fifth slot
Mouseclick, left
Sleep %speed%
MouseMove, 709, 274, Minecraft ; Crafted item
sleep %speed%
MouseClick, left
Sleep %speed%
MouseMove, 675, 445, Minecraft ; sixth slot
Mouseclick, left
Sleep %speed%
MouseMove, 715, 445, Minecraft ; 7th slot
Mouseclick, left
Sleep %speed%
MouseMove, 745, 445, Minecraft ; 8th slot
Mouseclick, left
Sleep %speed%
MouseMove, 785, 445, Minecraft ; 9th slot
Mouseclick, left
Sleep %speed%
MouseMove, 495, 475 Minecraft ; 10th slot
Mouseclick, left
Sleep %speed%
MouseMove, 709, 274, Minecraft ; Crafted item
Mouseclick, left
Sleep %speed%
MouseMove, 535, 475, Minecraft ; 11th
MouseClick, left
Sleep %speed%
MouseMove, 565, 475, Minecraft ; 12th
Mouseclick, left
sleep %speed%
Mousemove, 605, 475, Minecraft ; 13th
MouseClick, left
Sleep %speed%
MouseMove, 635, 475, Minecraft ; 14th
Mouseclick, left
Sleep %speed%
MouseMove, 675, 475, Minecraft ; 15th
Mouseclick, left
Sleep %speed%
MouseMove, 709, 274, Minecraft ; Crafted item
sleep %speed%
MouseClick, left
Sleep %speed%
MouseMove, 715, 475, Minecraft ; 16th
Mouseclick, left
Sleep %speed%
MouseMove, 745, 475, Minecraft ; 17th
Mouseclick, left
Sleep %speed%
MouseMove, 785, 475, Minecraft ; 18th
Mouseclick, left
Sleep %speed%
MouseMove, 495, 515, Minecraft ; 19th
MouseClick, left
Sleep %speed%
MouseMove, 535, 515, Minecraft ; 20th
MouseClick, left
Sleep %speed%
MouseMove, 709, 274, Minecraft ; Crafted item
sleep %speed%
MouseClick, left
Sleep %speed%
MouseMove, 565, 515, Minecraft ; 21st
Mouseclick, left
sleep %speed%
Mousemove, 605, 515, Minecraft ; 22nd
MouseClick, left
Sleep %speed%
MouseMove, 635, 515, Minecraft ; 23rd
Mouseclick, left
Sleep %speed%
MouseMove, 675, 515, Minecraft ; 24th
Mouseclick, left
Sleep %speed%
MouseMove, 715, 515, Minecraft ; 25th
Mouseclick, left
Sleep %speed%
MouseMove, 709, 274, Minecraft ; Crafted item
sleep %speed%
MouseClick, left
Sleep %speed%
Mouseclick, left
Sleep %speed%
MouseMove, 745, 515, Minecraft ; 26th
Mouseclick, left
Sleep %speed%
MouseMove, 785, 515, Minecraft ; 27th
Mouseclick, left
Sleep %speed%
MouseMove, 495, 555, Minecraft ; Hotbar 1
MouseClick,Left
Sleep %speed%
MouseMove, 531, 555, Minecraft ; Hotbar 2
MouseClick,Left
Sleep %speed%
MouseMove, 567, 555, Minecraft ; Hotbar 3
MouseClick,Left
Sleep %speed%
MouseMove, 709, 274, Minecraft ; Crafted item
sleep %speed%
MouseClick, left
;                                       STORING V
sleep 200
Send, Esc
sleep 200
if enderchest
{
 send, {LShift up}
 sleep 200
 send, t
 sleep 200
 send, /enderchest
 sleep 200
 send, {enter}
 sleep 200
 send, {LShift down}
 sleep 200
 MouseMove, %bx%, %by%, Minecraft ; First slot
sleep 200
MouseClick, left
sleep 200
Send, Esc
sleep 200
Send, {LShift up}
sleep 200
}
if backpack
{
send, 8
sleep 400
    Send {space Down}
    Sleep, 50
    Send {Space up}
MouseClick, right
sleep, 400
MouseMove, %bx%, %by%, Minecraft ; First slot
sleep 400
MouseClick, left
Sleep 400
Send, Esc
sleep 400
Send, {LShift up}
}
}
}


return

^p::Pause,Toggle

*F8::Pause,Toggle

*F9::ExitApp