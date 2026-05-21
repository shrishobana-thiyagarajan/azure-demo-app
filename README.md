# Azure Demo App 🚀

## 📘 Project Overview
This project demonstrates an end-to-end deployment of a Node.js application using Azure App Service with GitHub Actions CI/CD.

Whenever code is pushed to GitHub, the application is automatically built and deployed to Azure.
Copied the secret from Azure from demo/app publish setting added the variables.

---

## 🏗️ Architecture
## ⚙️ Technologies Used

- Azure App Service  
- GitHub Actions (CI/CD)  
- Node.js (Express)  
- GitHub  

---

## 🚀 Features

✅ Automatic deployment on code push  
✅ Cloud-hosted Node.js application  
✅ Continuous Integration & Continuous Deployment  
✅ Real-time updates  

---

## 🌐 Live Application

👉 https://demo-app-94-evd8ghcnanath7ep.centralindia-01.azurewebsites.net

---

## 📸 Application Output

Below is the deployed application running successfully:

![App Screenshot](image.png)

👉 Output:
**Azure deployment working ✅🚀**

---

## 🧠 Key Learnings

- Implemented CI/CD pipeline using GitHub Actions  
- Handled Azure authentication issues (RBAC, Basic Auth)  
- Fixed runtime issues using `process.env.PORT`  
- Successfully deployed Node.js app to Azure  

---

## ▶️ Run Locally

```bash
npm install
node app.js


# ✅ 📸 ADD YOUR IMAGE (VERY IMPORTANT)

Now do this:

### 1️⃣ Upload image
Click:
👉 **Add file → Upload files**

Upload your screenshot (the one you showed)

---

### 2️⃣ Rename image
Rename file to:
---

### 3️⃣ Commit changes

Click:
👉 **Commit changes**

---

# ✅ FINAL RESULT

Your GitHub will show:

✔ Professional README  
✔ Architecture  
✔ Live app link  
✔ Screenshot  
✔ DevOps explanation  
////////////////////////////////////////////////////////////

---

# 🔥 Added another way to do

## ✅ What this project demonstrates

### 1) Azure App Service (working)
- Node.js app deployed to Azure App Service
- CI/CD via GitHub deployment workflow (publish profile)
- Fix: App listens on `process.env.PORT` (required by Azure)

### 2) Container build in Azure Container Registry (working)
- Docker image built in Azure using `az acr build` directly from GitHub repo (no local Docker required)

### 3) AKS (cluster created + kubectl connected)
- AKS cluster created successfully
- In this environment, Kubernetes RBAC restrictions prevented creating deployments/services/secrets (`server rejected our request`)
- The repo includes Kubernetes manifests that work in unrestricted clusters.

---

## 🏗️ Architecture

GitHub → CI/CD → Azure App Service → Live Web App

**App Service path**
**AKS path**
GitHub → ACR build → Container Image → AKS → Deployment → Service → Public IP
---

## 📂 Repo structure
---

## ▶️ Run locally

```bash
npm install
npm start
Open: http://localhost:3000

Build container image in Azure (Cloud Shell)

Prerequisites: Azure Container Registry (ACR) + repo contains Dockerfile

chmod +x scripts/cloudshell-acr-build.sh
./scripts/cloudshell-acr-build.sh

Create AKS + connect (Cloud Shell)
chmod +x scripts/cloudshell-aks-create.sh
./scripts/cloudshell-aks-create.sh

Deploy to AKS (works in unrestricted RBAC clusters)
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl get pods
kubectl get svc

Add one more line at top:

```md
> ✅ Built during hands-on Azure cloud practice with CI/CD pipeline integration
## 8) After you finish, destroy resources (what you asked)
Run your cleanup script:

```bash
./scripts/cleanup.sh
