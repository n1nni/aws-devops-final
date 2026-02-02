# Simple Python AWS DevOps Application

This is a minimal Python Flask application designed for an AWS DevOps final assessment.

## Routes

- `/` : Returns a simple text response to verify the application is running.
- `/db` : Attempts to connect to a database and run a simple query.

## Environment Variables

The application requires the following environment variables:

- DB_HOST
- DB_NAME
- DB_USER
- DB_PASSWORD

See `.env.example` for reference.

## Running Locally

```bash
pip install -r requirements.txt
python app.py
```

## AWS Usage

- Use Amazon RDS for the database.
- Deploy using ECS or EKS.
- Inject environment variables using task definitions or Kubernetes secrets.
