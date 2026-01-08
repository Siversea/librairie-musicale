
# Script : create_artists.sh
# Objectif : ajouter plusieurs artistes dans un genre existant

# -------------------------------------------------------
# DEMANDE DU GENRE
# -------------------------------------------------------
read -p "Entrez le nom du genre existant : " GENRE

# On se place dans le dossier du genre
cd "$GENRE"

# Message de confirmation
echo "Vous êtes dans le dossier du genre '$GENRE'."

# -------------------------------------------------------
# BOUCLE DE SAISIE DES ARTISTES
# -------------------------------------------------------
echo "Entrez les noms des artistes un par un."
echo "Tapez 'stop' pour terminer la saisie."

while true
do
    # Lecture du nom de l'artiste
    read -p "Nom de l'artiste : " ARTISTE

    # Condition d'arrêt
    if [ "$ARTISTE" = "stop" ]; then
        echo "Fin de la création des artistes."
        break
    fi

    # Création du dossier artiste
    mkdir -p "$ARTISTE"
    echo "Artiste '$ARTISTE' créé dans '$GENRE'."
done
