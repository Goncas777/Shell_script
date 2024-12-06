#!/bin/bash

# Verifica se está rodando dentro da pasta script_sample_folder
if [ "$(basename "$PWD")" != "samples" ]; then
    # Mensagem de erro
    echo "Erro: Este script deve ser executado dentro da pasta samples."
    # Encerra o script
    exit 1
fi


if [ -z "$1" ]; then
    echo "Uso: $0 <caractere>"
    exit 1
fi

CHARACTER="$1"
diretorioacorrer="script_sample_folder"


for dir in "$diretorioacorrer"/*; do
    if [ -d "$dir" ] && [[ "$(basename "$dir")" == *"$CHARACTER"* ]]; then
        echo "A apagar o conteúdo do diretório: $dir"
        rm -rf "$dir"/*
    fi
done

echo "Esquece. Se o outro anterior me deu dores de cabeça, este aqui deu bem mais. So estava a por 1 parentese reto em ves de 2. Se chegou aqui é porque rodou bem, amen."
