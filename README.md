# Introduction to Kubernetes, Scalability and Availability

## A2 - Introduction to Kubernetes

This assignment has three parts:
* A2.1 Deploy a local k8s cluster
* A2.2 Deploy your A1 Docker image as Deployment in A2.1 cluster
* A2.3 Deploy Ingress to expose A2.2 Deployment to your localhost

Follow the guide in demo/a2/ to complete the tasks.
Place your manifests in k8s/manifests/ and commands used in k8s/a2_setup.sh.

Learning Objective:
1. To understand the basic architecture of Kubernetes and its terminologies.
2. To setup Kubernetes using KIND (Kubernetes IN Docker) and understand its basic components (Nodes, Deployments, Pods, Service, Ingress) and to configure kubectl

Marking Scheme:
1. Ability to connect to a deployed application image from within the cluster through a Service
2. Ability to deploy an Ingress controller and connect to a deployed application image from outside the cluster through a configured Ingress

## A3 - Scalability and Availability

This assignment has two parts:
* A3.1 Deploy HorizontalPodAutoscaler that makes A2.2 Deployments scale up under load.
* A3.2 Modify your A2.2 Deployment to be distributed equally in each zone

Follow the guide in demo/a3/ to complete the tasks.
Place your manifests in k8s/manifests/ and commands used in k8s/a3_setup.sh.

Learning Objective:
1. To understand and appreciate how container orchestration technologies enable scalability and high availability

Marking scheme:
1. Define a basic horizontal pod auto-scaler and demonstrates it works as expected for a scaling metric of your choice.
2. Update the deployment to adopt zone-aware scheduling.

## Getting Started
Clone the repository

```
git clone git@github.com:CS3219-AY2223S1/OTOT-A2-A3.git cs3219_otot_taska2_3
cd cs3219_otot_taska2_3
```
