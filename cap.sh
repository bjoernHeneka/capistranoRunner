#!/bin/bash

# Start ssh agent
eval `ssh-agent -s`

# add ssh key
ssh-add /ssh-keys/*

cap $@