# Ambiente de desenvolvimento com Docker para aulas de Programação Web

## Objetivo

Este repositório tem como objetivo auxiliar os alunos da disciplina de Programação Web a configurar um ambiente de desenvolvimento com Docker.

## Pré-requisitos

- [Git](https://git-scm.com/downloads)
- [Docker](https://docs.docker.com/get-docker/)
- [WSL2](https://docs.microsoft.com/pt-br/windows/wsl/install-win10) (Windows)

## Como usar (primeiros passos)

1. Clone este repositório (observe em que pasta você está).
    
```bash
git clone https://github.com/werlang/docker-dev-env.git aula
```

2. Crie um novo ambiente de desenvolvimento no Docker Desktop.

![image](https://user-images.githubusercontent.com/19828711/216793056-a141f09b-b4d7-4f3f-87a6-b4e04793afea.png)

2. Escolha *local directory*, e então selecione pasta do repositório que você acabou de clonar.

![image](https://user-images.githubusercontent.com/19828711/216796158-c9d29bea-f395-481b-a1b7-417f69e91cce.png)

3. Após a criação do ambiente, abra o *VSCode* e nele abra a pasta do repositório. Você verá que o ambiente já está configurado.

![image](https://user-images.githubusercontent.com/19828711/216796279-16177648-5e19-4538-994a-142430586a9d.png)

4. Os conteineres do ambiente já estão rodando. A pasta do Apache foi criada em `./app`. Tudo que você colocar nessa pasta será acessível pelo `http://localhost`.

![image](https://user-images.githubusercontent.com/19828711/216796461-3c1d8cf8-9d8a-422f-a511-c15418d29a7b.png)

5. Quando você terminar de usar o ambiente, você pode parar os conteineres pelo Docker Desktop.

![image](https://user-images.githubusercontent.com/19828711/216796428-a009d70d-835f-4990-a16b-35342e6a5dd5.png)

## Banco de dados

O banco de dados MySQL já está configurado com as seguintes credenciais:

- Host: `localhost`
- Porta: `3306`
- Usuário: `root`
- Senha: `asdf1234`
- Banco de dados: `aula`

Caso você queira alterar o *nome do banco de dados* ou *senha*, você pode alterá-los no arquivo `compose-dev.yaml`. 

![image](https://user-images.githubusercontent.com/19828711/216796942-c6370678-3a3c-46b8-81a6-e7854a80506a.png)

Após a alteração, você deve parar e iniciar os conteineres novamente (processo descrito no tópico anterior).

Para acessar o banco de dados, você pode usar o *MySQL Workbench* ou o *DBeaver* com as credenciais acima.

## Composer

O *Composer* já está instalado no ambiente. Para usá-lo, você deve acessar o conteiner do PHP pelo terminal do VSCode.

```
docker exec -it aula_php_1 bash
```

Esse comando irá abrir o terminal do conteiner, onde você pode executar o *Composer*. Para sair do conteiner, basta digitar `exit`.

