# EasyEngine Vagrant

A super-simple way to get a local environment up and running with [Vagrant](http://www.vagrantup.com/) and [EasyEngine](https://rtcamp.com/easyengine/). [VVV](https://github.com/Varying-Vagrant-Vagrants/VVV) is great, but EE provides an even lighter way to get a PHP/WordPress focused LEMP stack up and running.

This is primarily for use as a playground or to kickstart a new project. For existing projects I currently use a separate script that runs after easyengine.sh and grabs the production site via [rsync](https://www.google.co.uk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CDQQFjAA&url=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FRsync&ei=_-S6U9iaA_Gf0wWHjIHICQ&usg=AFQjCNGlYHzQiW0CVkPWpkkptYP-fUYFPg&bvm=bv.70138588,d.d2k). This is perhaps a little messy, but since I’ve given up on storing WP plugins/core via git (submodules) it’s the best way I’ve found to pull down an up to date copy if fixes are needed. If I maintain a local copy it quickly becomes hopelessly out of date. Best to exclude the theme/custom plugins and then clone them from their own repos:

	!/usr/bin/env bash
	rm -R www/website.com/htdocs/*
	rsync -av --delete --progress --exclude 'wp-content/themes/*' --rsync-path="sudo rsync" -e "ssh -p22" user@user.com:/var/www/website.com/htdocs ./www/website.com/
	git clone git@github.com:john/website-theme.git www/website.com/htdocs/wp-content/themes/websitetheme

I may automate dumping and importing the database, but for the time being I do this manually and just have EE spit out the MySQL root credentials as it finishes.

When work stops on a project, and I can safely say it’s unlikely I’ll need to update it anytime soon, then I destroy the VM and delete everything but the Vagrant files (and possibly the theme for redundancy).
