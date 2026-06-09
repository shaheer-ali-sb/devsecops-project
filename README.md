# Automated DevSecOps Pipeline with Container Monitoring

A production-style CI/CD pipeline integrating automated security scanning,
cloud deployment, and real-time alerting.

---

## What This Project Does

This project automates the full lifecycle of a containerized application:
code is pushed to GitHub, automatically built and security-scanned,
deployed to AWS EC2, and monitored continuously with Slack alerts.

---

## Architecture

GitHub Push
    → GitHub Actions triggered
    → Docker image built
    → Trivy scans image for vulnerabilities
    → Image pushed to Docker Hub
    → Deployed to AWS EC2
    → Slack webhook sends deployment notification
    → Cron job monitors container health every 10 minutes
    → CPU / memory / disk alerts sent to Slack if thresholds exceeded

---

## Tech Stack

- CI/CD: GitHub Actions
- Containerization: Docker
- Security Scanning: Trivy
- Cloud: AWS EC2
- Alerting: Slack Incoming Webhooks
- Monitoring: Bash + Cron Jobs
- Application: Python / Flask

---

## Key Features

- Automated vulnerability scan on every push — pipeline fails if critical CVEs are found
- Zero-touch deployment to EC2 on every successful build
- Container health monitoring every 10 minutes via cron
- Slack notifications for deployments, failures, and resource threshold breaches

---

## Setup

1. Fork this repository
2. Add the following GitHub Actions secrets:
   - DOCKER_USERNAME
   - DOCKER_PASSWORD
   - EC2_HOST
   - EC2_SSH_KEY
   - SLACK_WEBHOOK_URL
3. Push to main branch to trigger the pipeline

---

## Monitoring Script

The bash monitoring script checks:
- CPU usage
- Memory usage
- Disk usage
- Container running status

Alerts are sent to Slack if any metric exceeds the defined threshold.
Script is scheduled via cron to run every 10 minutes.

---

## Certification

This project was built as part of a structured 6-month DevOps internship program.
