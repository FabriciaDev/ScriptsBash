# Um script que analisa os logs de autenticação para identificar tentativas de login falhadas pode
# ajudar a detectar possíveis tentativas de invasão. O comando `grep` pode ser usado para
# procurar padrões de logs.

#!/bin/bash
echo "Procurando por tentativas de login falhadas nos logs:"
grep "Failed password" /var/log/auth.log
