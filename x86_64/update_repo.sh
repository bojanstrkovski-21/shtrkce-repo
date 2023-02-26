#!/bin/bash

rm shtrkce-repo*

echo "repo-add"
repo-add -n -R shtrkce-repo.db.tar.gz *.pkg.tar.zst


echo "####################################"
echo "Repo Updated!!"
echo "####################################"