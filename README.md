# AWS DevOps Final Assessment Project

## Overview
A Python Flask application deployed on AWS using:
- GitHub Actions for CI/CD
- Amazon ECS for container orchestration
- Amazon RDS (MySQL) for database
- Amazon ECR for container registry
- Terraform for infrastructure as code

## Application Architecture
1. **Frontend**: Flask application running on port 5000
2. **Database**: MySQL RDS instance
3. **Container**: Dockerized app on ECS Fargate
4. **Load Balancer**: Application Load Balancer

## Routes
- `GET /` - Health check endpoint
- `GET /db` - Database connection test

## Environment Variables
Required environment variables:
- `DB_HOST` - RDS endpoint
- `DB_NAME` - Database name
- `DB_USER` - Database username  
- `DB_PASSWORD` - Database password
- `DB_PORT` - Database port (default: 3306)

## Local Development
```bash
# Install dependencies
pip install -r requirements.txt

# Run application
python app.py