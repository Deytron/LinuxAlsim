# Script pour l'éval je suis trop chaud

for file in "/tmp/"; do
	if [ ! -d "/tmp/in" ]; then
		echo "ERREUR 5 : Aucun dossier tmp/in présent. Aucune opération à effectuer."
		exit 5
	elif test -f "/tmp/in/running.lock"; then
		echo "ERREUR 22 : Operation en cours. Veuillez stopper l'opération actuelle."
		exit 22
	elif find /tmp/in -mindepth 1 | read; then
		mkdir -p /tmp/out
		touch running.lock
		gzip -r /tmp/in
		mv /tmp/in/* /tmp/out/
		rm running.lock
        else     
                echo "ERREUR 7 : Le dossier tmp/in est vide. Aucune opération à effectuer"
                exit 7
	fi
done
