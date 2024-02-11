#!/bin/bash
grep -oP "(?<=tags/).+(?=.tar)" Dockerfile
