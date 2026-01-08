read -p "quel genre de musique? " genre
mkdir $genre
touch $genre/information.txt
echo $genre > $genre/information.txt
read -p "description du genre de musique. " description
echo $description >> $genre/information.txt