# Um script que verifica portas abertas em um sistema e alerta sobre portas não autorizadas ou suspeitas.

#!/bin/bash
host="127.0.0.1"
portas=("80" "22" "443" "3389")
for porta in "${portas[@]}"; do
nc -zv "$host" "$porta" > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo "Porta $porta está aberta em $host"
else
echo "Porta $porta está fechada em $host"
fi
done
