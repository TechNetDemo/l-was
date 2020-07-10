# Jenkins CI CD on OCP3

In this lab, we will deploy Hello World App via Jenkins on OCP3

Start OCP 3 Playground (OpenShift 3.11) - 60 mins

Go to `https://learn.openshift.com/playgrounds/openshift311/`

Click `START SENARIO`

Go to `Dashboard` tab

Login as `admin`


# Hands on Lab
- [Create Openshift Project](#create-openshift-project)
- [Deploy Jenkins](#deploy-jenkins)
- [Setup Build Config](#setup-build-config)
- [Setup Deployment Config](#setup-deployment-config)
- [Create Service](#create-service)
- [Create Route](#create-route)
- [Start Build](#start-build)


## Create Openshift Project

Click `+ Create Project`

Input the following information and press `Create` 
- Name: `jenkins`
- Display Name: `jenkins`

Go to project `jenkins`


## Deploy Jenkins

1. Click `Catalog`

2. Select `Jenkins`

3. Press `Next`

4. Input the following information and press `Next` 
  - Memory Limit: `2Gi`
  - Volume Capacity: `10Gi`
  
5. Select `Create a secret in jenkins to be used later` and press `Create`

6. Press `Close`

7. Go to `Overview`


## Setup Build Config

1. Click `Add to Project` > `Import YAML / JSON`

2. Click `Browse...`, and then select `l-was-build.yaml`

3. Press `Create` > `Close`

4. Click `Builds` > `Builds`, you can see the build config.


## Setup Deployment Config

1. Click `Add to Project` > `Import YAML / JSON`

2. Click `Browse...`, and then select `l-was-deploy.yaml`

3. Press `Create` > `Close`

4. Click `Applications` > `Deployments`, you can see the deployment config.


## Create Service

1. Click `Add to Project` > `Import YAML / JSON`

2. Click `Browse...`, and then select `l-was-service.yaml`

3. Press `Create` > `Close`

4. Click `Applications` > `Services`, you can see the service for hello world pods.


## Create Route

1. Click `Add to Project` > `Import YAML / JSON`

2. Click `Browse...`, and then select `l-was-route.yaml`

3. Press `Create` > `Close`

4. Click `Applications` > `Routes`, you can see the route of hello world service.


## Start Build

1. Go to `Builds` > `Builds`

2. Click `hello-world-build`

3. Click `Start Build`

4. Click `View Log` to see the details

5. After build success, click `Overview` to see the deployment

6. After deploy success, click the route under `Routes - External Traffic` to visit hello world app



