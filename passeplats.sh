# Script pour l'éval je suis trop chaud

for file in "/tmp/in"; do
	if [[ $file == *.lock ]]; then
		exit 22
	else
		gzip -r /tmp/in
		mv /tmp/in/* /tmp/out


