# httpd-24-fedora
Simple apache in fedora container

__Fedora version:__
Fedora release 31 (Thirty One)

__Apache version:__
Apache/2.4.41 (Fedora)
Server built:   Nov 21 2019 00:00:00

## How to use?
Pull the image from the [Docker Hub ](https://hub.docker.com/r/ocampoge/httpd-24-fedora)
```
docker pull ocampoge/httpd-24-fedora
```

## RUN CONTAINER on Port 80/443
```
docker run --name container-name -d -p 80:80 -p 443:443 docker.io/ocampoge/httpd-24-fedora
```

## RUN CONTAINER with specific files or configuration
```
docker run --name container-name -d -p 80:80 -v /opt/website:/var/www/html -v /opt/website-conf:/etc/httpd/conf.d docker.io/ocampoge/httpd-24-fedora
```

## RUN CONTAINER with own certificate
```
docker run --name container-name -d -p 443:443 -v /opt/website-crt/mycert.crt:/etc/pki/tls/certs/localhost.crt -v /opt/website-crt/mycert.key:/etc/pki/tls/private/localhost.key docker.io/ocampoge/httpd-24-fedora
```
