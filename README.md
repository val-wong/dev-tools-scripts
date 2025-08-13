Dev Tools Scripts

A small collection of shell scripts to speed up day-to-day developer workflows with Git, Okta SAML/SCIM lookups, Terraform runs, and local FastAPI testing.

📦 Requirements

macOS / Linux with Bash

curl and jq installed

Terraform ≥ 1.5 (for Terraform-related scripts)

Python 3.10+ (only if you run FastAPI locally)

Okta API token with read permissions

⚙️ Environment Variables

These scripts expect Okta details to be set in your shell or stored in a .env file you source before running them:

export OKTA_CLIENT_ORGURL="https://<your-okta-org>.okta.com"
export OKTA_CLIENT_TOKEN="REDACTED"
export APP_ID="0oexampleid"   # Target Okta app

📂 Scripts
git-push.sh

Pushes the current branch to the remote and sets the upstream if not already set.

./git-push.sh

okta-show-groups.sh

Lists all group assignments for a given Okta app.

./okta-show-groups.sh "$APP_ID"

okta-show-saml.sh

Retrieves and prints SAML configuration details (ACS URL, Entity ID, Recipient, Destination) for a given Okta app.

./okta-show-saml.sh "$APP_ID"

start-fastapi.sh

Starts the local FastAPI development server.

./start-fastapi.sh

tf-apply.sh

Runs terraform apply interactively in the current directory.

./tf-apply.sh

🚀 Typical Workflow

Check SAML details for an Okta app

./okta-show-saml.sh "$APP_ID"


List app’s assigned groups

./okta-show-groups.sh "$APP_ID"


Make Terraform changes and apply

./tf-apply.sh


Push code changes to GitHub

./git-push.sh


Start backend for testing

./start-fastapi.sh

🛠 Setup & Permissions

Make scripts executable:

chmod +x *.sh
chmod +x scripts/*.sh
