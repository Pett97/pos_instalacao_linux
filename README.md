# Script de Instalação e Configuração Automática

Este script realiza a instalação e configuração de vários softwares e ferramentas essenciais em sistemas baseados no Ubuntu. 

---

## Funcionalidades

- Atualização de repositórios e pacotes do sistema.
- Instalação das seguintes ferramentas e tecnologias:
  - **CURL**
  - **Navegador Brave**
  - **PHP**
  - **Composer**
  - **OpenJDK 21**
  - **NVM (Node Version Manager)**
  - **Node.js LTS**
  - **Docker e Docker Compose**
  - **Flatpak e repositório Flathub**

---

### Ferramentas via Flatpak
- **Postman**: Plataforma para desenvolvimento e testes de APIs.
- **Podman Desktop**: Ferramenta de gerenciamento de contêineres.
- **Discord**: Plataforma de comunicação para equipes.
- **Telegram**: Cliente desktop do Telegram.
- **GIMP**: Editor de imagens avançado.
- **Popsicle**: Ferramenta para criar discos de inicialização USB.

### Ferramentas via Snap
- **Apache NetBeans**: Ambiente de desenvolvimento integrado (IDE).
- **MySQL Workbench Community**: Ferramenta de design e administração de bancos de dados MySQL.

### Outras Ferramentas
- **Yarn**: Gerenciador de pacotes para JavaScript, instalado via NPM.

### Docker
- Imagem do Docker:
  - **dockurr/samba**: Contêiner configurado para compartilhamento de arquivos Samba.
  - Porta exposta: `445`.
  - Configuração:
    - Usuário: `pett`
    - Senha: `pett`
    - Volume local montado: `/home/samba`.

---

## Requisitos

- Sistema operacional baseado em **Ubuntu**.
- Permissões de **superusuário (sudo)**.

---

## Instruções de Uso

1. Clone ou faça o download deste repositório.
2. Garanta permissões de execução para o script:
   ```bash
   chmod +x nome-do-arquivo.sh
