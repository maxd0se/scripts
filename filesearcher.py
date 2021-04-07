#!/usr/bin/env python3
import sys

red_start = '\033[91m'
green_start = '\33[92m'
color_end = '\33[0m'
filename = input('File to search: ')
                     
with open(filename) as fobj:
    text = fobj.read().strip().split()
    while True:
        try:
            x = input('Enter string to search: ')
            if x == "":
                continue
            if x in text:
                print('Match found: {}'.format(green_start + x + color_end))
                break            
            raise Exception(red_start + 'No match.' + color_end)
        except Exception as e:
            print(e)
            sys.exit(1)
            
