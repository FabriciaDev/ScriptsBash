# Um script que monitora alterações em arquivos críticos do sistema e alerta sobre quaisquer modificações não autorizadas.

#!/bin/bash

diretorio="/diretorio_critico"
while true; do
changes=$(inotifywait -e modify,create,delete
"$diretorio")
echo "Alterações detectadas em: $changes"
done
