# Automatizar a verificação e instalação de atualizações do sistema é importante para manter o
# sistema seguro. O uso de comandos como `apt-get`(para sistemas baseados em Debian) ou
# `yum` (para sistemas baseados em Red Hat) pode ser incorporado em um script.

#!/bin/bash

echo “Verificando atualizações disponíveis...”
apt-get update
apt-get upgrade -s | grep “upgraded”
