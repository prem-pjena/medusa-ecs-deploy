# Medusa Headless Commerce Deployment on AWS ECS (Fargate)

This project deploys the open-source [Medusa](https://medusajs.com/) headless commerce backend to AWS using **Terraform** and **ECS Fargate**, with a **CI/CD pipeline** built using **GitHub Actions**.

---

## 🚀 Project Overview

- **IaC**: All AWS infrastructure is provisioned using Terraform.
- **ECS Fargate**: Runs the Medusa backend in a serverless container environment.
- **CI/CD**: GitHub Actions automates Terraform plan and apply on push.
- **Public Deployment**: Exposed via Application Load Balancer (ALB).

---

## 🧱 Infrastructure Components

- VPC with public subnets
- ECS Cluster with Fargate Task and Service
- IAM Roles and Policies
- CloudWatch Logs for ECS Task

---

## 🛠️ Tools & Technologies

- **Terraform**
- **AWS ECS Fargate**
- **GitHub Actions**
- **Medusa JS**
- **Docker**

---

## 🔁 CI/CD Workflow

The GitHub Actions pipeline:
- Initializes Terraform
- Validates and plans infrastructure changes
- Applies them to AWS on merge to `main`

See: `.github/workflows/deploy.yml`

---

## 📸 Loom Video Explanation

📹 [Click here to watch the full explanation video](PASTE_YOUR_LOOM_LINK_HERE)

---

## 📂 Folder Structure

medusa-ecs-deploy/
├── .github/
│   └── workflows/
│       └── deploy.yml         # GitHub Actions workflow
├── terraform/
│   ├── main.tf                # Provider, backend, and general setup
│   ├── ecr.tf                 # ECR repository setup 
│   ├── ecs.tf                 # ECS cluster, service, task definition
│   ├── variables.tf           # Input variables
│   ├── outputs.tf             # Output values like ALB DNS
│   └── terraform.tfstate      # Local state (not usually committed)
├── Dockerfile                 # Medusa image build file
└── README.md



---

## ✅ Deployment Status

✅ GitHub Actions: Successful  
✅ ECS Service Running  
✅ Medusa Backend Accessible  

---

## 👨‍💻 Author

**Prem Prakash**  
DevOps Engineer

---

