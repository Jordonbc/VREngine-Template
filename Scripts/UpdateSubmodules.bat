@echo off
echo Updating Submodules
cd %CD%../
git submodule update --recursive --remote
echo Update Complete!