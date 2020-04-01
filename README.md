# Linha de comando de Controle de contas

## Uso:

```
$ chmod +x app/cli.rb
$ ./app/cli.rb <contas.csv> <transferencias.csv>
```


## Docker:

Para uso no Docker, coloque os dois arquivos, com os nomes contas.csv e transferencias csv na pasta app e rode:

```
docker build -it accounts_cli .
docker run accounts_cli
```
