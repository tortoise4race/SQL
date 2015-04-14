#!/bin/bash
ps auxwww | grep ora11s | grep "sh$" | awk '{ print $2 } ' | xargs kill -9
ps auxwww | grep ora11s | grep "nolog$" | awk '{ print $2 } ' | xargs kill -9