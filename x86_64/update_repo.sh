#!/bin/bash

#rm shtrkce-repo*

#echo "repo-add"
#repo-add -n -R shtrkce-repo.db.tar.gz *.pkg.tar.zst

#!/bin/bash

rm shtrkce-repo*

echo "repo-add"
repo-add -n -R shtrkce-repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm shtrkce-repo.db

rm shtrkce-repo.files

mv shtrkce-repo.db.tar.gz shtrkce-repo.db

mv shtrkce-repo.files.tar.gz shtrkce-repo.files


echo "####################################"
echo "Repo Updated!!"
echo "####################################"