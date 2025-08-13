# Ambiente de desenvolvimento com Docker para aulas de Programação Web

## Objetivo

Este repositório tem como objetivo apresentar uma solução de ambiente de desenvolvimento web simples utilizando Docker e auxiliar em sua configuração.

## Pré-requisitos

- [VSCode](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads) (Normalmente vem junto com o VSCode)
- [Docker](https://docs.docker.com/get-docker/) (Docker Desktop)
- [WSL2](https://docs.microsoft.com/pt-br/windows/wsl/install-win10)
- [Docker Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) (Extensão do VSCode)

É também recomendável que você utilize um computador com pelo menos 8GB de RAM para um desempenho ideal.

## Como usar (primeiros passos)

1. Abra seu diretório de interesse usando o VSCode (File > Open Folder). Este será seu _workspace_.

2. Copie os arquivos `compose.yaml` e `.env.example` deste repositório para dentro do diretório. Caso você queira executar com as configurações básicas, só é necessário copiar o arquivo `compose.yaml`.

3. Certifique-se de que o *Docker Desktop* está rodando, e que a extensão do *Docker* está instalada no VSCode. Então clique com o botão direito no arquivo `compose.yaml` e selecione *Compose Up*.

![image](https://user-images.githubusercontent.com/19828711/216797989-beab99de-ca1e-47da-a729-c07ae3bda961.png)

3. Aguarde o Docker baixar as imagens e criar os containers (Este processo é demorado só na primeira vez). Quando terminar, você verá que o ambiente já está configurado e rodando.

![image](https://user-images.githubusercontent.com/19828711/216798129-8158d388-251f-4de2-b8a3-43f9f21fce73.png)

4. A pasta do Apache foi mapeada para o diretório _public_ . Tudo que você colocar nessa pasta será acessível pelo endereço `http://localhost`.

    PS: Caso você já esteja usando a porta 80 (por exemplo, por usar o WAMP), o container do Apache não irá subir. Nesse caso, você precisará alterar a porta do Apache no arquivo `.env` e reiniciar os containers. Neste caso, você acessará o Apache pelo endereço `http://localhost:PORTA`. O mesmo vale para o MySQL (porta 3306). Leia mais sobre isso no tópico [Arquivo .env](#arquivo-env).

![image](https://github.com/werlang/docker-dev-env/assets/19828711/1399bf34-a2e8-4e15-8c4c-539525bfb634)

6. Quando você terminar de usar o ambiente, você pode parar os containers clicando com o botão direito no arquivo `compose.yaml` e selecionar *Compose Down*.

## Banco de dados

O banco de dados MySQL já está configurado com as seguintes credenciais:

- Host: `localhost`
- Porta: `3306`
- Usuário: `root`
- Senha: `asdf1234`
- Banco de dados: `aula`

## Arquivo .env

O arquivo `.env` contém algumas configurações que você pode alterar dependendo do ambiente que você estiver executando os serviços apache e mysql. Por padrão, um arquivo `.env.example` é fornecido com as seguintes configurações:

```bash
MYSQL_DATABASE=aula
MYSQL_PASSWORD=asdf1234
MYSQL_PORT=3306
APACHE_PORT=80
```

Caso você queira alterar alguma das configurações, você deve renomear o arquivo `.env.example` para `.env` e alterar as configurações conforme necessário. Por exemplo, caso esteja usando o WAMP, você pode querer alterar a porta do Apache para 8080 e a porta do MySQL para 3310.

Após a alteração, você deve parar e iniciar os containers novamente (processo descrito no tópico anterior).

Para acessar o banco de dados, você pode usar o *MySQL Workbench*, *DBeaver* ou qualquer ferramenta de gerenciamento de BD com as credenciais acima.

## Composer

O PHP *Composer* já está instalado no ambiente. Para usá-lo, você deve acessar o container do PHP pelo terminal do VSCode.

![image](https://user-images.githubusercontent.com/19828711/216798287-28c7ba08-db63-4b7b-94d5-6a71169ffe98.png)

Esse comando irá abrir o terminal do container, onde você pode executar o *Composer*. Para sair do container, basta digitar `exit`.

