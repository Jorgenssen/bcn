Just learning repository for:
  * python
  * blockchain
  * uwsgi and nginx
  * systemd units
  * bash

Sources:
  * https://hackernoon.com/learn-blockchains-by-building-one-117428612f46
  * https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-uswgi-and-nginx-on-ubuntu-18-04
  * https://uwsgi-docs.readthedocs.io/en/latest/Nginx.html?highlight=upstream%20uwsgicluster

This project in up and running state consists of three blockchain nodes running on uwsgi behind nginx, i.e. 
* 127.0.0.1:8080
* 127.0.0.1:8081
* 127.0.0.1:8082

To be faster in manipulating with systemctl for these nodes and nginx: *bcn.sh* and its wrapper *bcn* (which is to be added to *$PATH*).

Feel free to ask any question.
