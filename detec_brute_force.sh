# Um script que monitora logs em busca de atividades de força bruta em tentativas de acesso, como
# tentativas repetidas de login.
#!/bin/bash
log_file="/var/log/auth.log"
limite_tentativas=5
tentativas=$(grep "Failed password" "$log_file" | wc -l)
if [ "$tentativas" -ge "$limite_tentativas" ]; then
echo "Possível ataque de força bruta detectado."
else
echo "Nenhuma atividade de força bruta detectada."
fi
