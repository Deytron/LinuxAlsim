# Script pour l'éval je suis trop chaud

# Boucle pour récupérer les fichiers dans tmp/in

tmpdossierin="/tmp/in"
tmpdossierout="/tmp/out"

gzip -r $tmpdossierin
mv $tmpdossierin $tmpdossierout


