#!/bin/bash

echo "Version:"
read user_input


wget -O openh264-$user_input.tar.gz https://codeload.github.com/cisco/openh264/tar.gz/$user_input
tar -xzf openh264-$user_input.tar.gz
mv ./openh264-$user_input /var/lib/flatpak/runtime/org.freedesktop.Platform.openh264/x86_64/$user_input
flatpak repair

echo "Done! You can close terminal now"
exit
