# Debian-only stuff. Abort if not Debian.
is_debian || return 1

#!/bin/sh

# Add additional PPA repositories.
sudo add-apt-repository ppa:nextcloud-devs/client
sudo add-apt-repository ppa:pbek/qownnotes

# Install NextCloud + QOwnNotes.
sudo apt-get -qq update
sudo apt-get install -y nextcloud-client qownnotes