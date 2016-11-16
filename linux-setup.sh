clear
read -ep "Enter android-studio top path (ex : /home/engineering/lib/android-studio/) [set nothing to use example]: " p

if [ -z $p]
then 
	p="/home/engineering/lib/android-studio/"
fi

if [ ! -d $p ]
then
	echo "folder doesn't exists"
	exit
fi

templatePath="plugins/android/lib/templates/activities"
echo $p$templatePath

if [ ! -d $p$templatePath ]
then
	echo "not android studio folder"
	exit
fi

echo $p$templatePath/TvlkPage
mkdir $p$templatePath/TvlkPage
cp -ru ${PWD}/TvlkPage $p$templatePath
