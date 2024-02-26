# Um script que analisa logs de autenticação em busca de padrões suspeitos, como múltiplas tentativas
# de login falhadas.

#!/bin/bash
log_file="/var/log/auth.log"
padrao="Failed password"
if grep -q "$padrao" "$log_file"; then
echo "Padrão suspeito encontrado nos logs de autenticação."
else
echo "Nenhum padrão suspeito encontrado nos logs de
autenticação."
fi
