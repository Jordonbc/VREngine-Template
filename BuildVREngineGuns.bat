@echo off
"C:\Epic Games\UE_4.25\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -Plugin="%CD%\Plugins\VREngineGuns\VREngineGuns.uplugin" -Package="%CD%\Packaged\VREngineGuns" -CreateSubFolder -VS2019

pause