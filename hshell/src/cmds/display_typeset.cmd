@echo off
::Command display_typeset should be executed from main.bat :)
set alphabet=abcdefghijklmnopqrstuvwxyz
set alphabet_uppercase=ABCDEFGHIJKLMNOPQRSTUVWXY
set numbers=1234567890
set emojis=😀🤣😅😊😍😗☺🤩😐🙄😥😯😁😃😆😋😘😙🙂🤔😑😏😮😪😂😄😉😎🥰😚🤗🤨😶😣🤐😫😌😝😓🙃☹😞😢😧🤯😱😳🥴🤬

echo Alphabet: %alphabet%
echo Alphabet (uppercase): %alphabet_uppercase%
echo Numbers: %numbers%
echo Emojis: %emojis%
echo Press any key to stop command. . .
pause>nul
cd ..
cd ..
main_silent