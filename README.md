# IaC-Crypto-Accounting-System
Final project for my Master's thesis at HTW Berlin - "Building a dynamic carbon-aware infrastructure deployment using IaC"

---

# ToDos:
## Core Features:
  1. Authentication / profile management -> likely just by entering public crypto address <> blockchain API
  2. Fetch balances & transactions via blockchain APIs
  3. Build tables (from databases) showing all (crypto) transactions
  4. Generate reports: Calculate income, expenses, and profit based on crypto prices.
  5. Export financial data for tax purposes (CSV/Excel).

## Setup dev environment:
  1. Install terraform & setup provider
  2. Configure python venv and install dependencies (`pip install fastapi uvicorn web3 psycopg2-binary`)

## Next steps:
1. Write Terraform scripts for:
    - Provisioning a PostgreSQL database (or RDS instance) -> **TBD**
    - Deploying an EC2 instance for hosting your backend.
    - Setting up storage for logs or exported reports (e.g., S3 buckets).

Example Terraform for PostgreSQL database:
```
resource "aws_db_instance" "crypto_db" {
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "13"
  instance_class    = "db.t2.micro"
  name              = "crypto_accounting"
  username          = "admin"
  password          = "secure_password"
  parameter_group_name = "default.postgres13"
}
```

--- 

Steps taken:
1. Create git repo (https://github.com/JeremLeOuf/IaC-Crypto-Accounting-System)
2. Clone in VSCode
3. Upgrade `pip` and install `virtualenv`
4. Create virtual environment "CryptoAccounting" `virtualenv CryptoAccounting`
5. Activate it: `source CryptoAccounting/bin/activate`
6. Create a `requirements.txt` file in the root of the project folder with the following dependencies: `fastapi uvicorn web3 psycopg2-binary`
7. Install them: `pip install -r requirements.txt`
8. Check if everything is there: `pip list`
