#!/usr/bin/env python2.7
import pytest
import urllib
import time

def waitForGrafana():
    tries = 0
    while tries < 30:
        try:
            urllib.urlopen('http://127.0.0.1:3000')
            break
        except:
            print "retrying ... %s" % tries
            tries += 1
            time.sleep(1)
    if tries == 30:
        raise Exception('Can not connect to grafana')

if __name__ == '__main__':
    waitForGrafana()
    pytest.main()
