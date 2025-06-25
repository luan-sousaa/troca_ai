# 🤝 Troca Aí - Conectando Necessidades e Habilidades

**Troca Aí** é um aplicativo desenvolvido durante o HackaTruck, utilizando **SwiftUI**, que promove a troca de serviços e habilidades entre pessoas, **sem envolver dinheiro**. A proposta é fortalecer comunidades, gerar valor social e incentivar a colaboração por meio da tecnologia.

## 📱 Visão Geral

O **Troca Aí** conecta usuários com necessidades específicas a outros que possuem habilidades para ajudar. Um exemplo simples: Sofia oferece aulas de inglês enquanto Fábio pode passear com o pet dela. Tudo de forma justa, organizada e colaborativa.

---

## 🚀 Tecnologias Utilizadas

- **SwiftUI** (iOS)
- **Xcode** (Ambiente de Desenvolvimento)
- **Figma** (Design da interface e prototipagem)
- **Node-RED** (Simulação de fluxos e lógica de backend)
- **Postman** (Testes de API)

---

## 🧠 Funcionalidades Principais

- **Cadastro de Perfil**: usuário define habilidades, necessidades e disponibilidade.
- **Algoritmo de Conexão**: aproxima usuários com base em interesses e localização.
- **Gestão de Trocas**: organiza os serviços acordados entre os usuários.
- **Sistema de Avaliação**: garante qualidade, responsabilidade e feedback.
- **Design Intuitivo**: pensado em acessibilidade e usabilidade.

---

## 🗂️ Estrutura de Pastas (projeto Xcode)

```bash
troca_ai/
├── troca_ai/
│   ├── AnuncioView.swift       # Tela de anúncios
│   ├── Assets/                 # Recursos visuais do app (imagens, cores etc.)
│   ├── chatView.swift          # Tela de chat entre usuários
│   ├── ContentView.swift       # Tela inicial do app
│   ├── ConversaView.swift      # Tela de conversa
│   ├── homeView.swift          # Tela principal (feed ou início)
│   ├── InfoView.swift          # Tela com informações do app
│   ├── Model                   # Model
│   ├── profileView.swift       # Tela de perfil do usuário
│   ├── troca_aiApp.swift       # Ponto de entrada do app (App struct)
│   └── ViewModel/              # Lógica de negócio e estado das views
├── troca_aiTests/              # Testes de unidade
│   └── troca_aiTests.swift
├── troca_aiUITests/           # Testes de interface do usuário
│   ├── troca_aiUITests.swift
│   └── troca_aiUITaunchTests.swift
```
---
## 🧪 Como Rodar o Projeto Localmente

1. Clone o repositório:

```bash
git clone https://github.com/luan-sousaa/troca_ai.git
cd troca_ai

2. Abra o projeto no Xcode:

```bash
open troca_ai.xcodeproj
```

3. Selecione um simulador ou dispositivo real e clique em **Run** ▶️.

4. Para testar APIs, recomendamos executar os fluxos no **Node-RED** e utilizar o **Postman** para chamadas HTTP.

---
## 💡 Inspiração
A ideia do Troca Aí surgiu da observação do potencial das comunidades em se apoiarem mutuamente.
Muitas pessoas têm habilidades úteis e outras têm necessidades reais, e o aplicativo atua como uma ponte para conectar essas duas realidades — sem a mediação do dinheiro.
---
## 👨‍💻 Equipe de Desenvolvimento
**Luan Bispo**

**Eduarda**

**Ana Beatriz**

**Ana** 



