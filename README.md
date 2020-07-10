# Jenkins CI CD on OCP3

In this lab, we will deploy Hello World App via Jenkins on OCP3

Start OCP 3 Playground (OpenShift 3.11) - 60 mins

Go to `https://learn.openshift.com/playgrounds/openshift311/`

Click `START SENARIO`

Go to `Dashboard` tab

Login as `admin`


# Hands on Lab
- [Download Files](#download-files)
- [Create Openshift Project](#create-openshift-project)
- [Create Image Stream](#create-image-stream)
- [Setup Build Config](#setup-build-config)
- [Setup Deployment Config](#setup-deployment-config)
- [Create Service](#create-service)
- [Create Route](#create-route)
- [Start Build](#start-build)

## Download Files

Please download files to your desktop from this repository


## Create Openshift Project

Click `+ Create Project`

Input the following information and press `Create` 
- Name: `jenkins`
- Display Name: `jenkins`


## Create Image Stream

1. Click `Add to Project` > `Import YAML / JSON`

2. Click `Browse...`, and then select `l-was-image_stream.yaml`

3. Press `Create` > `Close`

4. Click `Builds` > `Images`, you can see the created images stream.


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



