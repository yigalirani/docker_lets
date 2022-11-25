docker run -p 80:80 -it --rm --name certbot -v "$(pwd)/output:/etc/letsencrypt"  certbot/certbot certonly -m yigal_i@hotmail.com --agree-tos --standalone -d git.symbolclick.com
cp -rL output/live .
chown $USER -R live