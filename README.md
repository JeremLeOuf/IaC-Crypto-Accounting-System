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
