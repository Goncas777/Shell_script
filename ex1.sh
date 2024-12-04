#!/bin/bash

# Verifica se está rodando dentro da pasta script_sample_folder
if [ "$(basename "$PWD")" != "samples" ]; then
    # Mensagem de erro
    echo "Erro: Este script deve ser executado dentro da pasta samples."
    # Encerra o script
    exit 1
fi

for dir in ./script_sample_folder/*; do

        dir_name=$(basename "$dir")
        
        touch $dir/script_sample_folder-$dir_name.txt
        echo "ficheiro criado $dir/script_sample_folder-$dir_name.txt"
    
done
