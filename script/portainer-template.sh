#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

######################
# docker-compose.yml #
######################

echo '[
  {
    "title": "Apache 2.4",
    "description": "Apache 2.4 on Ubuntu 14.04",
    "logo": "https://www.apache.org/images/feathertm.gif",
    "image": "davask/d-apache:'${branch}'",
    "ports": [
      "80/tcp"
      "22/tcp"
    ],
    "env": [
      {
        "name": "DWL_LOCAL_LANG",
        "label": "Local lang [en_US:en]"
      },
      {
        "name": "DWL_LOCAL",
        "label": "Local [en_US.UTF-8]"
      },
      {
        "name": "DWL_USER_NAME",
        "label": "Username [username]"
      },
      {
        "name": "DWL_SSH_ACCESS",
        "label": "Enable ssh access [false]"
      },
      {
        "name": "DWL_USER_ID",
        "label": "User id [1000]"
      },
      {
        "name": "DWL_USER_PASSWD",
        "label": "User password for ssh access [secret]"
      },
      {
        "name": "DWL_KEEP_RUNNING",
        "label": "Keep container running [true]"
      },
      {
        "name": "DWL_HTTP_SERVERADMIN",
        "label": "Server Admin email address [admin@domain.name]"
      },
      {
        "name": "DWL_HTTP_DOCUMENTROOT",
        "label": "Document root [/var/www/html]"
      },
      {
        "name": "DWL_HTTP_SHIELD",
        "label": "htpasswd activated [false]"
      }
    ],
    "volumes": ["/home/username"]
  }
]
' >> ${rootDir}/portainer-template.json