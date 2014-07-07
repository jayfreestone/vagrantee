# EasyEngine Vagrant
A super basic way to get a local development environment up and running with Vagrant. VVV is great but EasyEngine makes it even easier to setup a lightweight LEMP stack with a WP focus.

This is for brand new, bare projects or for use as a playround.

For existing sites I currently use a separate bash script that I run after the Vagrant setup which uses RSYNC to pull down production code (e.g. the WordPress core/non-custom plugins, which I've given up managing in git) and then clones the theme to the appropriate directory.
