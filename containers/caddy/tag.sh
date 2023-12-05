#!/bin/bash
grep -oP "caddy:\K.+" Dockerfile | tail -n1
