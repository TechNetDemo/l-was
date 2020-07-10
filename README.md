# HelloWorld App with WebSphere Liberty on OCP3

In this lab, we will deploy Hello World App with WebSphere Liberty on OCP3

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
- [Other Information](#other-information)


## Download Files

Please download files to your desktop from this repository


## Create Openshift Project

Click `+ Create Project`

Input the following information and press `Create` 
- Name: `l-was`
- Display Name: `l-was`


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



## Other Information

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world deployment status.


3. Go to `Resources` tab.


4. Go to `Pods` section and click `View Logs`.


5. Go to `Terminal` tab, you can login to container.





