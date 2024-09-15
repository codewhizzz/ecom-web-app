
```md
# E-Commerce Web Application with Kubernetes Deployment

## Project Overview

This project is a simple e-commerce web application that demonstrates several Kubernetes features like horizontal pod autoscaling (HPA), configuration management with ConfigMaps and Secrets, liveness and readiness probes, and rolling updates. The application is designed to handle increased traffic and ensure high availability.

### Key Features:
- **Dark Mode Toggle:** Managed via a ConfigMap to switch between light and dark themes.
- **Promotional Banner:** Added for marketing campaigns to engage users.
- **Autoscaling:** Automatically scales the number of pods based on CPU utilization.
- **Liveness and Readiness Probes:** Ensures unresponsive or non-ready pods are restarted or withheld from receiving traffic.
- **Configuration Management:** Secure management of sensitive data (e.g., database credentials) using Secrets, and feature toggles using ConfigMaps.

---

## Setup Instructions

### Prerequisites
- Docker installed
- Kubernetes Cluster (e.g., Minikube, GKE, etc.)
- `kubectl` installed and configured
- Git installed

### Steps to Set Up Locally

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/ecom-web-app.git
   cd ecom-web-app
   ```

2. **Build and push the Docker image:**
   Replace `yourusername` with your Docker Hub username.
   ```bash
   docker build -t yourusername/ecom-web:v1 .
   docker push yourusername/ecom-web:v1
   ```

3. **Deploy to Kubernetes:**
   Apply the Kubernetes deployment and service configurations:
   ```bash
   kubectl apply -f k8s/website-deployment.yaml
   kubectl apply -f k8s/website-service.yaml
   ```

4. **Scale the Deployment:**
   Set up horizontal pod autoscaling based on CPU usage:
   ```bash
   kubectl autoscale deployment website-deployment --cpu-percent=50 --min=2 --max=10
   ```

5. **Monitor the Deployment:**
   Watch the pods scaling dynamically:
   ```bash
   kubectl get hpa
   kubectl get pods
   ```

---

## Feature Highlights

### Dark Mode
- Dark mode is controlled via a ConfigMap, allowing dynamic switching between light and dark themes without redeploying the application.
- You can toggle dark mode by editing the ConfigMap:
   ```bash
   kubectl edit configmap feature-toggle-config
   ```
   Change the value of `FEATURE_DARK_MODE` to `"true"` or `"false"`.

### Promotional Banner
- A promotional banner has been added to the website’s homepage to support marketing campaigns and boost user engagement.

### Autoscaling
- The Horizontal Pod Autoscaler (HPA) is configured to automatically scale the application based on CPU utilization, with a minimum of 2 and a maximum of 10 pods.

### Probes
- **Liveness Probe:** Ensures that unresponsive pods are restarted automatically.
- **Readiness Probe:** Ensures that a pod does not receive traffic until it's fully operational.

---

## Challenges and Solutions

### 1. Configuration Management
- **Problem:** Hardcoding sensitive data like database credentials is insecure.
- **Solution:** Used Kubernetes Secrets for secure management of database credentials, and ConfigMaps for feature toggles.

### 2. Autoscaling
- **Problem:** Handling unpredictable traffic spikes.
- **Solution:** Implemented Horizontal Pod Autoscaler (HPA) to dynamically scale the application based on CPU usage.

### 3. Probes
- **Problem:** Ensuring the application recovers from failures.
- **Solution:** Added liveness and readiness probes to monitor the health of pods and restart them if they become unresponsive.

---

## Testing

### Test Autoscaling:
Simulate load using a tool like ab (Apache Benchmark):
```bash
ab -n 1000 -c 50 http://<external-ip>/
```

Monitor the number of pods scaling:
```bash
kubectl get pods -w
```

### Test Liveness and Readiness Probes:
Simulate a failure by manually stopping the application in one of the pods:
```bash
kubectl exec -it <pod-name> -- pkill -9 httpd
```
Kubernetes should automatically restart the unresponsive pod.

---

## Future Improvements

- Implement full HTTPS support with Kubernetes Ingress and Let's Encrypt for SSL certificates.
- Add unit and integration tests for the application.
- Incorporate advanced monitoring and logging with Prometheus and Grafana.
``` 
