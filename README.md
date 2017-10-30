# FTC_Scripts
A set of scripts for uploading Java code to the FTC Robot Controller

**FTC_Down** — This script crawls the phone for prexisting java files and downloads them locally

**FTC_Up** — This script uploads Java files from the local machine to the robot controller

**FTC_Build** — This script builds the code on the robot controller and reports any errors back to the user if the build fails

**FTC_Wipe** — This deletes all existing source files on the robot controller

## Prerequisites

These scripts rely on `wget` and `find` and are verified to work in both `bash` and `zsh`

Currently these scripts only work on *nix systems
