#!/bin/bash
grep -oP "nextcloud:\K.+" Dockerfile | tail -n1
