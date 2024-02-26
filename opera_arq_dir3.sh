# Removendo um Arquivo e Executando um Comando Externo:

```bash
#!/bin/bash
echo "Removendo um arquivo e executando um comando externo..."
rm arquivo_removido.txt
resultado=$(ls /caminho/do/diretorio)
echo "Conteúdo do diretório: $resultado"
