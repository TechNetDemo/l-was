# Jenkins CI CD on OCP3

In this lab, we will deploy Hello World App via Jenkins on OCP3

Start OCP 3 Playground (OpenShift 3.11) - 60 mins

Go to `https://learn.openshift.com/playgrounds/openshift311/`

Click `START SENARIO`

Go to `Dashboard` tab

Login as `admin`


# Hands on Lab
- [Create Openshift Project](#create-openshift-project)
- [Configure l-was Project](#configure-l\-was-project)
- [Deploy Jenkins](#deploy-jenkins)
- [Setup Build Config](#setup-build-config)
- [Setup Deployment Config](#setup-deployment-config)
- [Create Service](#create-service)
- [Create Route](#create-route)
- [Start Build](#start-build)


## Create Openshift Project

### Create Jenkins Project

Click `+ Create Project`

Input the following information and press `Create` 
- Name: `jenkins`
- Display Name: `jenkins`

### Craete l-was Project

Click `+ Create Project`

Input the following information and press `Create` 
- Name: `l-was`
- Display Name: `l-was`


## Configure l-was Project

1. Go to project `l-was`

2. Go to `Resources` > `Membership`

3. Click `Edit Membership`

4. Input the following information
    - Name: `system:serviceaccounts:jenkins`
    - Select a role: `admin`

5. Press `Add` > `Done Editing`


## Deploy Jenkins

1. Go to project `jenkins`

2. Click `Catalog`

3. Select `Jenkins`

4. Press `Next`

5. Input the following information and press `Next` 
  - Memory Limit: `2Gi`
  - Volume Capacity: `10Gi`
  
6. Select `Create a secret in jenkins to be used later` and press `Create`

7. Press `Close`

8. Go to `Overview`

9. When Jenkins deployment completes, go to the link under `Routes - External Traffic`

10. Login as `admin`

11. Click `Allow selected permissions`


## Create Jenkins Pipeline

1. Click `Add to Project` > `Import YAML / JSON`

2. Click `Browse...`, and then input 
        
        apiVersion: build.openshift.io/v1
        kind: BuildConfig
        metadata:
        annotations:
            pipeline.alpha.openshift.io/uses: '[{"name": "jenkins", "namespace": "", "kind": "DeploymentConfig"}]'
        labels:
            name: jenkins
        name: l-was-pipeline
        namespace: jenkins
        spec:
        failedBuildsHistoryLimit: 5
        nodeSelector: {}
        output: {}
        postCommit: {}
        resources: {}
        runPolicy: Serial
        source:
            git:
            uri: 'https://github.com/TechNetDemo/l-was.git'
            ref: ocp3-jenkins
            type: Git
        strategy:
            jenkinsPipelineStrategy:
            jenkinsfilePath: JenkinsFile
            type: JenkinsPipeline
        successfulBuildsHistoryLimit: 5

3. Press `Create` > `Close`

4. Click `Builds` > `Pipeline`, you can see the Jenkins Pipeline.


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



