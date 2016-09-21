#!/bin/bash
### Set the following variables for your repository
GITHUBUSERNAME=jdmar3
REPONAME=jdmar3.github.io
REMOTEADDR=github.com
REMOTEUSERNAME=git
BUILDBRANCH=master
WORKDIR=~/workspace/jdmar3.github.io # Local directory of source repo 

### Display help text
if [[ "$1" = [-][hH] || "$1" = [-][hH] || "$1" = [-][-][Hh][Ee][Ll][Pp] ]]
	then
		echo -e "Usage:	deploy.sh [source branch] [target branch]"
		echo -e "Example:	deploy.sh"
		echo -e
		echo -e "This script should be run in the directory where your Jekyll source files live."
		echo -e
		echo -e "  -h, --help		Displays this help screen. "
    exit 0
fi

TEMPDIR=`mktemp -d`

# move into $TEMPDIR
cd $TEMPDIR
# Clone repository into TEMPDIR
git clone --single-branch --branch=$BUILDBRANCH  $REMOTEUSERNAME@$REMOTEADDR:$GITHUBUSERNAME/$REPONAME.git $TEMPDIR
# Remove files and commit to clear changes
#rm -r $TEMPDIR/*
#git commit -a -m "Clear previous build"
# Build Jekyll site
jekyll build -s $WORKDIR -d $TEMPDIR
# Add new build to git 
git add -v .
# Commit changes since last build
git commit -a -m "Update live site `date`"
# Push changes
git push
# Clear temp dir
cd ..
rm -rf $TEMPDIR
# Move back to source dir
cd $WORKDIR
# Exit
exit 0