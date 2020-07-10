# HelloWorld App with WebSphere Liberty on OCP3

In this lab, we will deploy Hello World App with WebSphere Liberty on OCP3

Start OCP 3 Playground (OpenShift 3.11) - 60 mins

Go to `https://www.katacoda.com/openshift/courses/playgrounds/openshift311`

Click `START SENARIO`

Go to `Dashboard` tab

Login as `admin`


# Hands on Lab

- [Create Openshift Project](#create-openshift-project)
- [Deploy Hello World from Dockerfile](#deploy-hello-world-from-dockerfile)
- [Visit Deployed App](#visit-deployed-app)
- [Other Information](#other-information)


## Create Openshift Project

Click `+ Create Project`

Input the following information and press `Create` 
- Name: `l-was`
- Display Name: `l-was`


## Deploy Hello World from Dockerfile

Click `+Add`

Click `From Dockerfile`

Input the following information and press `Create`
- Git Repo URL: `https://github.com/TechNetDemo/l-was.git`
- `Show Advanced Git Options`
- Git Reference: `ocp4`
- Container Port: `9080`
- Application Name: `hello-world`
- Name: `hello-world`
- `Routing`
- Path: `/sample`
- Target Port: `9080`


## View Build Logs

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world build status.


3. Go to `Resources` tab.


4. Go to `Builds` section and click `View Logs`.


## Visit Deployed App

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world deployment status.


3. Go to `Resources` tab.


4. Click the link provided on `Routes` section.



## Other Information

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world deployment status.


3. Go to `Resources` tab.


4. Go to `Pods` section and click `View Logs`.


5. Go to `Terminal` tab, you can login to container.





