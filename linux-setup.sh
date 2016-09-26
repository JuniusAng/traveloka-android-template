read -ep "Enter android-studio top path: " p

if [ ! -d $p ]
then
	echo "folder doesn't exists"
	exit
fi

set templatePath = "/plugins/android/lib/templates/activities/"
echo $p$templatePath

if [ ! -d $p$templatePath ]
then
	echo "not android studio folder"
	exit
fi

rm -rf "$p$templatePathTvlkPage"
mkdir "$p$templatePathTvlkPage"
cp -ru ${PWD}/TvlkPage "/Applications/android\ Studio.app/Contents/plugins/android/lib/templates/activities/"