@echo off

del csgo_richpresence.exe
del csgo_richpresence_installer.exe
del release.zip

pyinstaller -F -n csgo_richpresence --icon icon.ico --distpath . main.py
pyinstaller -F -n csgo_richpresence_installer --icon icon.ico --distpath . install.py

zip release.zip csgo_richpresence.exe
zip release.zip csgo_richpresence_installer.exe
zip release.zip README.md
zip release.zip gamestate_integration_discordrpc.cfg
