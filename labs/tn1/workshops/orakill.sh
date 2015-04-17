#!/bin/bash
ps auxwww | grep ora11s | grep "delete_orders.sh" | awk '{ print $2 } ' | xargs kill -9
ps auxwww | grep ora11s | grep "update_orders.sh" | awk '{ print $2 } ' | xargs kill -9