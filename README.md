# Ambiente de desenvolvimento com Docker para aulas de Programação Web

## Objetivo

Este repositório tem como objetivo apresentar uma solução de ambiente de desenvolvimento web simples utilizando Docker e auxiliar em sua configuração.

## Pré-requisitos

- [VSCode](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads) (Normalmente vem junto co VSCode)
- [Docker](https://docs.docker.com/get-docker/) (Docker Desktop)
- [WSL2](https://docs.microsoft.com/pt-br/windows/wsl/install-win10)
- [Ubuntu](https://www.microsoft.com/pt-br/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab), ou qualquer outra distribuição para o WSL
- [Docker Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) (VSCode)

## Como usar (primeiros passos)

1. Abra seu diretório de interesse usando o VSCode (File > Open Folder). Este será seu _workspace_.

2. Copie os arquivos `docker-compose.yml` e `.env.example` deste repositório para dentro do diretório. Renomeie o arquivo `.env.example` para `.env`.

3. Certifique-se de que o *Docker Desktop* está rodando, e que a extensão do *Docker* está instalada no VSCode. Então clique com o botão direito no arquivo `docker-compose.yml` e selecione *Compose Up*.

![image](https://user-images.githubusercontent.com/19828711/216797989-beab99de-ca1e-47da-a729-c07ae3bda961.png)

3. Aguarde o Docker baixar as imagens e criar os containers. Quando terminar, você verá que o ambiente já está configurado e rodando.

![image](https://user-images.githubusercontent.com/19828711/216798129-8158d388-251f-4de2-b8a3-43f9f21fce73.png)

4. A pasta do Apache foi mapeada para o diretório _public_ . Tudo que você colocar nessa pasta será acessível pelo `http://localhost:8080`. A porta pode ser alterada no arquivo `.env`.

![image](https://github.com/werlang/docker-dev-env/assets/19828711/1399bf34-a2e8-4e15-8c4c-539525bfb634)

6. Quando você terminar de usar o ambiente, você pode parar os containers clicando com o botão direito no arquivo `docker-compose.yml` e selecionar *Compose Down*.

## Banco de dados

O banco de dados MySQL já está configurado com as seguintes credenciais:

- Host: `localhost`
- Porta: `3310`
- Usuário: `root`
- Senha: `asdf1234`
- Banco de dados: `aula`

## Arquivo .env

O arquivo `.env` contém algumas configurações que você pode querer alterar dependendo do ambiente que você estiver executando os serviços apache e mysql.

```bash
MYSQL_DATABASE=aula
MYSQL_PASSWORD=asdf1234
MYSQL_PORT=3310
APACHE_PORT=8080
```

Após a alteração, você deve parar e iniciar os containers novamente (processo descrito no tópico anterior).

Para acessar o banco de dados, você pode usar o *MySQL Workbench*, *DBeaver* ou qualquer ferramenta de gerenciamento de BD com as credenciais acima.

## Composer

O *Composer* já está instalado no ambiente. Para usá-lo, você deve acessar o container do PHP pelo terminal do VSCode.

![image](https://user-images.githubusercontent.com/19828711/216798287-28c7ba08-db63-4b7b-94d5-6a71169ffe98.png)

Esse comando irá abrir o terminal do container, onde você pode executar o *Composer*. Para sair do container, basta digitar `exit`.

