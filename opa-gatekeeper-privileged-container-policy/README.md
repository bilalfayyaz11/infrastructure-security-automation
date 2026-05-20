# Kubernetes Policy-as-Code Enforcement with OPA Gatekeeper

## Objectives

This project implements Kubernetes compliance enforcement using Open Policy Agent Gatekeeper. It defines policy-as-code controls that prevent privileged containers from being deployed into the cluster.

## Tools Used

- Kubernetes
- Minikube
- Docker
- kubectl
- Open Policy Agent
- OPA Gatekeeper
- Rego
- YAML
- Bash

## Key Skills Demonstrated

- Kubernetes admission control
- Policy-as-code implementation
- OPA Gatekeeper deployment
- Rego-based compliance logic
- Kubernetes security governance
- Privileged container prevention
- Compliance testing with allowed and denied workloads
- Cluster evidence collection

## Implemented Policy

The project enforces a Kubernetes security policy that denies Pods containing privileged containers.

## Test Results

- `compliant-pod` was allowed because it used `privileged: false`.
- `non-compliant-pod` was denied because it used `privileged: true`.

## Evidence Files

- `reports/cluster-pods.txt`
- `reports/constraints-report.txt`
- `reports/k8s-events.txt`

## Troubleshooting Log

- Replaced outdated OPA CLI version with the latest static Linux binary.
- Avoided apt-based Minikube installation and used the official Minikube binary.
- Fixed Docker permission issue by adding the Ubuntu user to the Docker group.
- Replaced invalid raw `.rego` Kubernetes apply step with a valid Gatekeeper ConstraintTemplate.
- Created a modern Gatekeeper Constraint for policy enforcement.
