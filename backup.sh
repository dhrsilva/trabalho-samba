#!/bin/bash

backup_dir="/samba/backups"
backup_filename="Backup_$(date +'%d_%m_%y').zip"

# Crie o diretório de backup se ele não existir
mkdir -p "$backup_dir"

# Compacte o conteúdo das pastas
zip -r "$backup_dir/$backup_filename" /srv/private /srv/public /srv/usr1 /srv/usr2

echo "Backup concluído em $backup_dir/$backup_filename"
