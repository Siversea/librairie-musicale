
# Script : create_genre.sh
# Objectif : créer un genre musical sous forme de dossier et y ajouter un fichier information.txt avec le nom et la description

# -------------------------------------------------------
# DEMANDE DU NOM DU GENRE
# -------------------------------------------------------
# Affiche un message pour demander le nom du genre
read -p "Entrez le nom du genre musical : " GENRE

# -------------------------------------------------------
# CREATION DU DOSSIER DU GENRE
# -------------------------------------------------------
# mkdir -p permet de créer le dossier et tous les dossiers parents s'ils n'existent pas
mkdir -p "$GENRE"

# Affiche un message pour confirmer la création du dossier
echo "Dossier du genre '$GENRE' créé."

# -------------------------------------------------------
# DEMANDE DE LA DESCRIPTION
# -------------------------------------------------------
# Affiche un message pour demander une courte description
read -p "Entrez une courte description du genre : " DESCRIPTION

# -------------------------------------------------------
# CREATION DU FICHIER INFORMATION.TXT
# -------------------------------------------------------
# Le fichier sera placé dans le dossier du genre
FICHIER="$GENRE/information.txt"

# On écrit le nom du genre dans le fichier
echo "Nom du genre : $GENRE" > "$FICHIER"

# On ajoute la description dans le fichier
echo "Description : $DESCRIPTION" >> "$FICHIER"

# Message de confirmation
echo "Fichier '$FICHIER' créé avec succès."


