#!/bin/bash

#export SCRIPT_DIR=$(pwd)

echo 'begin script' 
cd ~jtritz/bitbucket/ecoach_webapps/mydata18/mts18
svn update
#svn update -r1444 mts.dictionary
#svn update -r1574 mts.dictionary
source ~jtritz/virtualenv/v1/bin/activate
python ~jtritz/bitbucket/ecoach_webapps/manage.py collectstatic --noinput --settings=mydata18.settings
echo 'end of script'




