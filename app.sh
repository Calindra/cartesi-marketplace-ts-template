#!/bin/bash

# Instala as dependências
npm install

npm run codegen

# Inicia o comando nonodo e monitora a saída
nonodo | {
  while IFS= read -r line; do
    echo "$line"  # Exibe a saída no console
    if [[ "$line" == *"nonodo: ready"* ]]; then
      # Quando a mensagem "nonodo: ready" for encontrada, saia do loop
      break
    fi
  done

  # Após o nonodo estar pronto, execute o npm start
  npm start
}
