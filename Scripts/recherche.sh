read -p "Entrez un mot ou une phrase des paroles : " RECHERCHE

echo "Resultats trouves :"

grep -ril "$RECHERCHE" 

