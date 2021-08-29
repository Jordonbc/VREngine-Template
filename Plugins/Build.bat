@echo off
"C:\Epic Games\UE_4.25\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -Plugin="%CD%\VREngine/VREngine.uplugin" -Package="C:/Users/jordo/Documents/Unreal Projects/Packaged/VREngine" -CreateSubFolder -VS2019

pause