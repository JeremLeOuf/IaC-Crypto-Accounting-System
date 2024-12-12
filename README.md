# IaC-Crypto-Accounting-System

Final project for my Master's thesis at HTW Berlin - "Building a dynamic carbon-aware infrastructure deployment using IaC"

---

1. Tech Stack

## Backend

- Python
  - Framework: [FastAPI](https://fastapi.tiangolo.com/)
  - Blockchain API: [web3.py](https://web3py.readthedocs.io/en/stable/), [BitQuery](https://docs.bitquery.io/docs/intro/)
    - Other options: CoinGecko, Binance, CoinMarketCap, EtherScan...

## Frontend

- Framework: [React.js](https://react.dev/)
- Design Library: [Bootstrap](https://getbootstrap.com/)

## Database

- Relational: **PostgreSQL**
- NoSQL: **MongoDB**

## Infrastructure & Automation

- IaC: [Terraform](https://www.terraform.io/) to provision:
  - Cloud services (AWS, Azure, GCP)
  - Databases (RDS for PostgreSQL)
  - Compute instances (EC2 / Lambda for serverless - dedicated to lightweight tasks)
- CI/CD: [GitHub Actions](https://github.com/features/actions)
- Containerization: [Docker](https://www.docker.com/)

## Blockchain integration

- **ETH, BSC, Polygon...** TBC
- APIs from [Alchemy](https://www.alchemy.com/) / [Infura](https://www.infura.io/)

## Cloud

- **AWS** (integrates with Terraform, robust set of services for data / compute resources)

## APIs

- [ElectricityMaps](https://app.electricitymaps.com/map) for integration carbon-aware infrastructure for future scaling
- Accounting APIs: e.g. [Ledger Python](https://github.com/mafm/ledger.py)

## ToDos

### Core Features

  1. Authentication / profile management -> likely just by entering public crypto address <> blockchain API
  2. Fetch balances & transactions via blockchain APIs
  3. Build tables (from databases) showing all (crypto) transactions
  4. Generate reports: Calculate income, expenses, and profit based on crypto prices.
  5. Export financial data for tax purposes (CSV/Excel).

### Setup dev environment

  1. Install **Terraform** & setup provider
  2. Configure python `venv` and install dependencies (`pip install fastapi uvicorn web3 psycopg2-binary`)

### Next steps

1. Write Terraform scripts for:
    - Provisioning a PostgreSQL database (or RDS instance) -> **TBD**
    - Deploying an EC2 instance for hosting your backend.
    - Setting up storage for logs or exported reports (e.g., S3 buckets).

Example Terraform for PostgreSQL database:

```tf
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

1. Create git repo (<https://github.com/JeremLeOuf/IaC-Crypto-Accounting-System>)
2. Clone in VSCode
3. Install `pip` and install `virtualenv`
4. Create virtual environment "CryptoAccounting" `virtualenv CryptoCompta`
5. Activate it: `CryptoCompta/bin/activate`

2.1. Dev Environment setup: `source setup.sh` :

- Install pip, git, unzip
- Create CryptoCompta virtualenv and activate it
- Install requirements
- Install AWS CLI
- Init terraform
- Keep the session alive with the activate virtualenv

_6. Create a `requirements.txt` file in the root of the project folder with the following dependencies: `fastapi uvicorn web3 psycopg2-binary` **TO CORRECT**_

- Install them: `pip install -r requirements.txt` > After activating venv
  Should be done only on the production machine

- Install Terraform: `sh install_terraform.sh`
