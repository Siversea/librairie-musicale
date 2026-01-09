#!/bin/bash
 
mkdir -p genre
mkdir -p genre/artistes

while true; do
    echo
    PS3="Sélctionne un genre : "

    select choix in "Créer un genre" genre/*/ "Quitter"; do
        case $choix in

            "Créer un genre")
                read -p "Quel genre de musique ? " genre_nom
                [[ -z "$genre_nom" ]] && echo "❌ Nom invalide." && break

                mkdir -p "genre/$genre_nom"

                read -p "Description du genre de musique : " description
                echo "$genre_nom" > "genre/$genre_nom/information.txt"
                echo "$description" >> "genre/$genre_nom/information.txt"

                echo "✅ Genre '$genre_nom' créé."
                break
                ;;

            genre/*/)
                genre_nom=$(basename "$choix")
                echo "🎵 Genre sélectionné : $genre_nom"

                mkdir -p "$choix/artistes"

                # 🔁 MENU ARTISTES
                while true; do
                    echo
                    echo "Genre : $genre_nom"
                    echo "1) Ajouter un artiste"
                    echo "2) Quitter le menu artiste"

                    read -p "Choisis une option : " option

                    case $option in
                        1)
                            read -p "Nom de l'artiste : " artiste_nom
                            [[ -z "$artiste_nom" ]] && echo "❌ Nom invalide." && continue

                            mkdir -p "$choix/artistes/$artiste_nom"
                            echo "✅ Artiste '$artiste_nom' ajouté."
                            ;;
                        2)
                            echo "↩ Retour au menu principal"
                            break 2   # ✅ sort du while artiste + du select
                            ;;
                        *)
                            echo "❌ Choix invalide."
                            ;;
                    esac
                done
                ;;

            "Quitter")
                echo "Au revoir 👋"
                exit 0
                ;;

            *)
                echo "❌ Choix invalide."
                ;;
        esac
    done
done