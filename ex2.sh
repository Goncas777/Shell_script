#!/bin/bash

# Verifica se está rodando dentro da pasta script_sample_folder
if [ "$(basename "$PWD")" != "samples" ]; then
    # Mensagem de erro
    echo "Erro: Este script deve ser executado dentro da pasta samples."
    # Encerra o script
    exit 1
fi

if [ -z "$1" ]; then
  echo "Uso: $0 <prefixo>"
  exit 1
fi

prefixo=$1


diretorio="script_sample_folder"


# Iterar por todas as pastas no diretório
for pasta in "$diretorio"/*; do
  if [ -d "$pasta" ]; then
    
    pasta_nome=$(basename "$pasta")
    
    novo_nome="$diretorio/$prefixo-$pasta_nome"
    
    mv "$pasta" "$novo_nome"
    
    echo "Pasta renomeada de '$pasta_nome' para '$prefixo-$pasta_nome'"
  fi
done

echo "Demorei imenso tempo a fazer este script, é bom que tenha funcionado"
