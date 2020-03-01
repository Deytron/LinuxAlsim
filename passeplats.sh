# Script pour l'éval je suis trop chaud

for file in "/tmp/out"; do
	if test -f "/tmp/out/running.lock"; then
		echo "ERREUR 22 : Operation en cours"
		exit 22
	else
		touch running.lock
		gzip -r /tmp/in
		mv /tmp/in/* /tmp/out
		rm running.lock
		fi
done
