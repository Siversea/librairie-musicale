read -p "quel genre de musique? " genre
mkdir genre/$genre
touch genre/$genre/information.txt
echo $genre > genre/$genre/information.txt
read -p "description du genre de musique. " description
echo $description >> genre/$genre/information.txt