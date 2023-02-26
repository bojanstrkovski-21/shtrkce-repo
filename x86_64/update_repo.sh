#!/bin/bash

rm shtrkce_repo*

echo "repo-add"
repo-add -n -R shtrkce_repo.db.tar.gz *.pkg.tar.zst


echo "####################################"
echo "Repo Updated!!"
echo "####################################"