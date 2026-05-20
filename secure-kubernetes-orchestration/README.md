# Secure Kubernetes Orchestration with Minikube

## Objectives

This project demonstrates how to build and secure a Kubernetes environment using Minikube, Kubernetes Pod Security Admission, Helm, and Kubernetes Network Policies.

The lab focuses on container hardening, secure workload deployment, namespace-level security enforcement, and pod-to-pod communication restrictions.

---

## Tools Used

* Kubernetes
* Minikube
* Docker
* Helm
* kubectl
* YAML
* Linux
* Bitnami Helm Charts
* Kubernetes Network Policies
* Pod Security Admission (PSA)

---

## Key Skills Demonstrated

* Kubernetes cluster deployment using Minikube
* Kubernetes namespace security enforcement
* Secure container runtime configuration
* Non-root container deployment
* Helm-based application deployment
* Kubernetes network segmentation
* Pod-to-pod traffic restriction
* Kubernetes troubleshooting and debugging
* Modern Kubernetes security hardening practices

---

## Security Features Implemented

* Restricted Pod Security Admission enforcement
* Non-root container execution
* Dropped Linux capabilities
* Disabled privilege escalation
* RuntimeDefault seccomp profiles
* Namespace-level security controls
* NetworkPolicy-based ingress restrictions

---

## Files Included

* secure-nginx.yaml
* privileged-pod.yaml
* network-policy.yaml
* allowed-client.yaml
* blocked-client.yaml
* evidence/nodes.txt
* evidence/all-pods.txt
* evidence/secure-apps-pods.txt
* evidence/services.txt
* evidence/network-policy-output.yaml
* evidence/pod-security-labels.txt
* evidence/helm-releases.txt

---

## Troubleshooting Log

### Deprecated PodSecurityPolicy (PSP)

Problem:

* Original lab used `policy/v1beta1` PodSecurityPolicy.
* PSP was removed in Kubernetes v1.25+.

Fix:

* Replaced PSP with modern Pod Security Admission labels.

---

### Minikube kubectl Connection Refused

Problem:

* `kubectl` attempted to connect to localhost:8080.

Fix:

* Restarted Minikube and switched kubectl context to `minikube`.

---

### Secure Nginx Pod CrashLoop

Problem:

* Standard Nginx image failed under restricted non-root security policies.

Fix:

* Replaced with `nginxinc/nginx-unprivileged:stable-alpine`.

---

### Storage Provisioner Startup Delay

Problem:

* `storage-provisioner` initially entered Error state during cluster startup.

Fix:

* Allowed additional startup time and pod recovered automatically.

---

## Real-World Relevance

This project reflects production-grade Kubernetes security practices used in modern DevSecOps, platform engineering, and cloud-native infrastructure environments.
