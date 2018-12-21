#!/bin/bash
pfctl -d
pfctl -nf /etc/pf.conf
pfctl -f /etc/pf.conf
pfctl -e