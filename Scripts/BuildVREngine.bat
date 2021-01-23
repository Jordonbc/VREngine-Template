@echo off
"C:\Epic Games\UE_4.25\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -Plugin="%CD%\..\Plugins\VREngine\VREngine.uplugin" -Package="%CD%\..\Packaged\VREngine" -CreateSubFolder -VS2019

pause