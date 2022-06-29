@echo off
echo x=msgbox("%1%", 0+0, "Message") > .\msgbox.vbs
wscript .\msgbox.vbs
del .\msgbox.vbs
cd ..
cd ..
main_silent