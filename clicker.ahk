#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SetTimer, SearchForLoot, 100

#v::Reload

SearchForLoot:
ClickOn("image.png")
ClickOn("image2.png")
ClickOn("image3.png")

ClickOn(path)
{
  ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %path%
  If ErrorLevel = 0
  {
    FoundY += 5
    Click, %FoundX%, %FoundY%
    MouseMove, 0, 0
  }
}
return
#b::ExitApp 
