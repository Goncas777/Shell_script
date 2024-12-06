#!/bin/bash

# Verifica se está rodando dentro da pasta script_sample_folder
if [ "$(basename "$PWD")" != "samples" ]; then
    # Mensagem de erro
    echo "Erro: Este script deve ser executado dentro da pasta samples."
    # Encerra o script
    exit 1
fi



diretorio="script_sample_folder"


if [ "$1" == "true" ]; then
    echo "Vou apagar tudo, ja foste..."
    rm -rf "$diretorio/*"
else
    echo "Vou apagar os diretórios com conteúdo dentro de $diretorio..."
    for dir in "$diretorio"/*; do
        if [ -d "$dir" ] && [ "$(ls -A "$dir")" ]; then
            rm -rf "$dir"
            echo "Diretório com conteúdo apagado, gg: $dir"
        fi
    done
fi

echo "Processo concluido"