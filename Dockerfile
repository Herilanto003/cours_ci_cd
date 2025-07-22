# Utilise l'image officielle Nginx comme base
FROM nginx:alpine

# Supprime les fichiers HTML par défaut de Nginx

# Copie les fichiers statiques dans le répertoire de Nginx
COPY . /usr/share/nginx/html/

# Expose le port 80 (par défaut de Nginx)
EXPOSE 80

# Démarre Nginx en mode non daemon
CMD ["nginx", "-g", "daemon off;"]
