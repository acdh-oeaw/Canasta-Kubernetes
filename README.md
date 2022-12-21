# Canasta-Kubernetes for FINA
Kubernetes stack template for Canasta.

## Installation

First, make sure you have a Kubernetes cluster ready, and that namespace fina is created.
The FINA MediaWiki instance will use external MariaDB server.

Then, clone the repository:

```
git clone --branch fina --single-branch https://github.com/acdh-oeaw/Canasta-Kubernetes.git 
```

Make necessary changes to the .env file and the files in the config and settings directory, and then call the following:

```
./start.sh
```
