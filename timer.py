#!/usr/bin/env python
import subprocess
import json
import os
import time
import os.path

def zero_to_infinity():
    i = 0
    while True:
        yield i
        i += 1

for y in zero_to_infinity():
    print(time.strftime("%a, %d %b %Y %H:%M:%S"))
    time.sleep(300)

