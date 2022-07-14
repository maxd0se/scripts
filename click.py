!#/usr/bin/python3

import time
import pyautogui

pyautogui.FAILSAFE = False

while True:
    pyautogui.moveTo(2047, 1151, duration=1)
    time.sleep(1)
    pyautogui.click(2046, 1150)
    time.sleep(60)
