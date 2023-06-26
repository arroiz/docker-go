# Docker com Go

Esse é um exemplo básico de como executar uma aplicação Go usando Docker com multi stage.

O Dockerfile está montando um container Go, copiando todos os arquivos `.go` dessa pasta, jogando no container e compilando. Após a compilação, está sendo montado um novo container scratch e copiando o output do build para esse arquivo, reduzindo assim o tamanho.

### Como usar

Para usar, poderá ser montado o dockerfile aqui:

```
docker build <seu-username>/go-example:latest .
```

Ou será possivel rodar com a imagem que eu subi para o meu registry

```
docker run arroiz/fullcycle:latest
```
