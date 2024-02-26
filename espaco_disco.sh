# Suponha que você queira verificar o espaço livre em disco usando o comando `df -h`. Você pode
# incorporar esse comando em um script da seguinte maneira:
```bash
#!/bin/bash
espaco_livre=$(df -h)
echo "Espaço livre em disco:"
echo "$espaco_livre"
```
#Nesse exemplo, o comando `df -h` é executado e seu resultado é armazenado na variável
#`espaco_livre`. Em seguida, o resultado é exibido usando o comando `echo`.
