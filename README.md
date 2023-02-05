# Ambiente de desenvolvimento com Docker para aulas de Programação Web

## Objetivo

Este repositório tem como objetivo auxiliar os alunos da disciplina de Programação Web a configurar um ambiente de desenvolvimento com Docker.

## Pré-requisitos

- [Git](https://git-scm.com/downloads)
- [Docker](https://docs.docker.com/get-docker/)
- [WSL2](https://docs.microsoft.com/pt-br/windows/wsl/install-win10)
- [Ubuntu](https://www.microsoft.com/pt-br/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab), ou qualquer outra distribuição para o WSL
- [VSCode](https://code.visualstudio.com/download)
- [WSL Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) (VSCode)
- [Docker Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) (VSCode)

## Como usar (primeiros passos)

1. Abra o VSCode na aba *Remote Explorer* e clique em *Connect to WSL*. **OBS**: Vc precisa já ter instalado todos os pré-requisitos acima.

![image](https://user-images.githubusercontent.com/19828711/216797795-fbf7f734-d3b4-4213-9363-c238738c5ec9.png)

2. Abra o terminal do VSCode e clone este repositório (subsitua `aula` pelo nome do seu projeto).
    
```bash
git clone https://github.com/werlang/docker-dev-env.git aula
```

3. Vá em *Open Folder* e selecione a pasta do projeto.

![image](https://user-images.githubusercontent.com/19828711/216797921-6b6389e2-c98d-495d-9230-8599dbe4ddac.png)

4. Certifique-se de que o *Docker Desktop* está rodando, e que a extensão do *Docker* está instalada no VSCode. Então clique com o botão direito no arquivo `docker-compose.yml` e selecione *Compose Up*.

![image](https://user-images.githubusercontent.com/19828711/216797989-beab99de-ca1e-47da-a729-c07ae3bda961.png)

5. Aguarde o Docker baixar as imagens e criar os containers. Quando terminar, você verá que o ambiente já está configurado e rodando.

![image](https://user-images.githubusercontent.com/19828711/216798129-8158d388-251f-4de2-b8a3-43f9f21fce73.png)

4. A pasta do Apache foi criada em `./app`. Tudo que você colocar nessa pasta será acessível pelo `http://localhost`.

![image](https://user-images.githubusercontent.com/19828711/216796461-3c1d8cf8-9d8a-422f-a511-c15418d29a7b.png)

6. Quando você terminar de usar o ambiente, você pode parar os containers clicando com o botão direito no arquivo `docker-compose.yml` e selecionar *Compose Down*.

## Banco de dados

O banco de dados MySQL já está configurado com as seguintes credenciais:

- Host: `localhost`
- Porta: `3306`
- Usuário: `root`
- Senha: `asdf1234`
- Banco de dados: `aula`

Caso você queira alterar o *nome do banco de dados* ou *senha*, você pode alterá-los no arquivo `docker-compose.yml`. 

![image](https://user-images.githubusercontent.com/19828711/216798248-e05fd131-ee86-46ba-90ff-6a39ca6ef766.png)

Após a alteração, você deve parar e iniciar os containers novamente (processo descrito no tópico anterior).

Para acessar o banco de dados, você pode usar o *MySQL Workbench* ou o *DBeaver* com as credenciais acima.

## Composer

O *Composer* já está instalado no ambiente. Para usá-lo, você deve acessar o container do PHP pelo terminal do VSCode.

![image](https://user-images.githubusercontent.com/19828711/216798287-28c7ba08-db63-4b7b-94d5-6a71169ffe98.png)

Esse comando irá abrir o terminal do container, onde você pode executar o *Composer*. Para sair do container, basta digitar `exit`.

