# 🎮 Midnight Atari (Assembly)

Projeto em Assembly para o console **Atari 2600**, inspirado em jogos clássicos como *Midnight Magic*.

Este repositório contém o código-fonte em linguagem Assembly (6502) para desenvolvimento de jogos/homebrew no Atari, explorando diretamente o hardware do console.

---

## 🚀 Sobre o projeto

Este projeto tem como objetivo:

- Estudar e praticar **programação em Assembly (6502)**
- Explorar o funcionamento do hardware do **Atari 2600**
- Criar um jogo inspirado em mecânicas clássicas de pinball/arcade
- Entender limitações reais de memória, ciclos de CPU e renderização por scanline

---

## 🧠 Tecnologias e conceitos

- Assembly 6502
- Arquitetura do Atari 2600 (TIA, RIOT)
- Programação baseada em ciclos (cycle counting)
- Renderização por scanline
- Desenvolvimento low-level

---

## 📂 Estrutura do projeto

```bash
.
├── main.asm        # Arquivo principal do jogo
├── macros.h        # Macros auxiliares (se houver)
├── vcs.h           # Definições do hardware do Atari
└── build/          # Arquivos compilados (ROM)
