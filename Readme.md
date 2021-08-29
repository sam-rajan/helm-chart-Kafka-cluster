# Kubernetes Helm Chart for deploying a Kakfka Cluster

This project contains helm charts and supporting files that enable you to deploy a Kafka cluster on Kubernetes for development or test purposes. Please see the diagram below for getting an overview.


![](diagram.png?raw=true)

## Prerequisites

* Kubernetes cluster (Kubernetes v1.9.2+ )
* Helm (Helm v3)
* NFS Mount


## Documentation

This repository provides Helm charts for following services:

* ZooKeeper
* Kafka brokers
* Kafka web based UI (Yahoo CMAK) -- optional
* Kafka Connect (adding soon)
* Schema Registry (adding soon)
* REST Proxy (adding soon)

### Install Helm on Kubernetes

Follow the directions to [install and deploy Helm](https://docs.helm.sh/using_helm/#quickstart-guide) to the Kubernetes cluster.

```bash
$ helm init
$ helm repo update
$ helm list
```
### How to deploy Kafka Cluster

Clone this repo,

```bash
$ git clone https://github.com/sam-rajan/helm-chart-Kafka-cluster.git
```
Execute the `helm install` command

```bash
$ helm install -name-template=kafka ./helm-chart-Kafka-cluster --namespace kafka --create-namespace
```

This repository includes a web based Kafka UI - [Yahoo CMAK](https://github.com/yahoo/CMAK) which is optional, You can skip this package by executing following command, 

```bash
$ helm install -name-template=kafka ./helm-chart-Kafka-cluster --namespace kafka --create-namespace --set kafka-gui.enabled=false
```

# Contributing

Feel free to fix the issues if you find any and add improvements as well. Don't forget to raise a PR!!

## Road map

 - Kafka Connect
 - Schema Registry
 - REST Proxy
 
