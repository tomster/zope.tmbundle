#!/usr/bin/env python
# encoding: utf-8
"""
Created by Tom Lazar on 2008-11-11.
Copyright (c) 2008 tomster.org. All rights reserved.

Expects the output of browser.contents on stdin, cleans it up and prints it to stdout

"""

import sys
import os
import re

def main():
    opener = re.compile("(<!DOCTYPE.*)")
    closer = re.compile("(</(html|HTML)>)")
    whitespace = re.compile("^\s*$")
    for strline in opener.split(sys.stdin.read())[1:2]:
        for line in strline.split('\\n'):
            if not whitespace.match(line):
                print line
            if closer.match(line):
                break

if __name__ == '__main__':
    main()

