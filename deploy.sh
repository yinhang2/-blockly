#!/bin/bash

current_dir=`pwd`
top_dir=`dirname $current_dir`
user_name=`basename $top_dir`
repo_name=`basename $current_dir`
site_root="/var/www/html"
dest_dir="$site_root/$user_name/$repo_name/"

rm -rf $dest_dir
mkdir -p $dest_dir
mv _book/* $dest_dir
