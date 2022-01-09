@echo off
"F:\Unreal Engine\UE_4.27\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -Plugin="%CD%\VREngine/VREngine.uplugin" -Package="%CD%../../../Packaged/VREngine" -CreateSubFolder -VS2019 -nohotreload

pause