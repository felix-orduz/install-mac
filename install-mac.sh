#!/bin/bash

########################
##### requirements #####
########################

### command line tools ####
# xcode-select --install

### Homebrew ####
# url: https://github.com/Homebrew
source homebrew.sh

### Gum ####
# url: https://github.com/charmbracelet/gum

#brew install gum

TYPE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert")
