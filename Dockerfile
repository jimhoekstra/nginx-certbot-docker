FROM nginx:stable

RUN apt-get update && apt-get -y install python3 python3-venv libaugeas0

RUN python3 -m venv /opt/certbot && /opt/certbot/bin/pip install --upgrade pip && /opt/certbot/bin/pip install certbot certbot-nginx

CMD ["nginx", "-g", "daemon off;"]
