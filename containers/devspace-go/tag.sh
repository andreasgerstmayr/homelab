#!/bin/bash
grep -oP "golang:\K.+" Dockerfile
