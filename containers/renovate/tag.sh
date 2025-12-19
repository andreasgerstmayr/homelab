#!/bin/bash
grep -oP "renovate:\K.+" Dockerfile
