
# Script : add_song.sh
# Objectif : ajouter une chanson à un artiste dans un genre

# -------------------------------------------------------
# DEMANDE DES INFORMATIONS
# -------------------------------------------------------
read -p "Entrez le genre : " GENRE
read -p "Entrez le nom de l'artiste : " ARTISTE
read -p "Entrez le titre de la chanson : " TITRE

# Dossier de l'artiste
DOSSIER="$GENRE/$ARTISTE"

# Création du fichier de la chanson
FICHIER="$DOSSIER/${TITRE}.txt"

# Lecture des paroles
read -p "Entrez les paroles : " PAROLES

# Lecture d'informations supplémentaires (année, durée...)
read -p "Entrez des informations (duree, annee...) : " INFOS

# Écriture dans le fichier
echo "Titre : $TITRE" > "$FICHIER"
echo "Paroles : $PAROLES" >> "$FICHIER"
echo "Informations : $INFOS" >> "$FICHIER"

# Confirmation
echo "Chanson '$TITRE' ajoutée pour l'artiste '$ARTISTE' dans le genre '$GENRE'."
