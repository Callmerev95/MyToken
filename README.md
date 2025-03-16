# 🚀 MyToken  

A simple ERC-20 token implementation using Hardhat. This project demonstrates basic token functionalities such as minting, transferring, and querying balances.  

![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)  
![Solidity](https://img.shields.io/badge/solidity-^0.8.17-363636?logo=solidity)  

---

## 📌 Features  
```
|         Feature           |               Description              |
|---------------------------|----------------------------------------|
|🏗  Mint Tokens            | Users can securely transfer tokens     |
|🔄 Transfer               | Users can securely transfer tokens     |
|🔍 Check Balance          | Retrieve the balance of any account    |
|🚀 Deployable on Hardhat  | Easily deploy the contract for testing |
```
---

## 📂 Project Structure  

```bash
MyTokenProject/
│── contracts/
│   ├── MyToken.sol        # The main ERC-20 token contract
│── scripts/
│   ├── deploy.js          # Deployment script for the contract
│── node_modules/          # Installed dependencies
│── hardhat.config.js      # Hardhat configuration file
│── package.json           # Project dependencies and scripts
│── README.md              # Project documentation
```

---

## 🚀 Getting Started  

### 1️⃣ Prerequisites  
Make sure you have the following installed:  
- **Node.js** (v16 or later)  
- **Hardhat**  
- **Remix IDE (optional for web-based deployment)**  

### 2️⃣ Install Dependencies  
Clone this repository and install the required packages:  
```sh
git clone https://github.com/your-username/MyTokenProject.git
```
* cd MyTokenProject

* npm install


---

## ⚙️ Usage  

### 🔨 **Compile the Contract**  
```sh
npx hardhat compile
```

### 🏗 **Run a Local Blockchain**  
```sh
npx hardhat node
```

### 🚀 **Deploy the Contract**  
```sh
npx hardhat run scripts/deploy.js --network localhost
```

### 🛠 **Deploy via Remix IDE**  
1. Open [Remix IDE](https://remix.ethereum.org/)  
2. Upload `MyToken.sol` to Remix  
3. Go to the **Solidity Compiler** tab and click **Compile**  
4. Navigate to the **Deploy & Run Transactions** tab  
5. Select **Injected Web3** and connect to MetaMask  
6. Click **Deploy** and wait for the contract to be deployed  

---

## 📝 Smart Contract Overview  

### `MyToken.sol` (Located in `contracts/`)  

```solidity
function mint(address recipient, uint256 amount) public onlyOwner;
function transfer(address recipient, uint256 amount) public returns (bool);
function balanceOf(address account) public view returns (uint256);
```

---

## 🔗 Deploy to a Testnet (Optional)  

If you want to deploy the contract to a testnet (e.g., Goerli, Sepolia), configure `hardhat.config.js` and use:  
```sh
npx hardhat run scripts/deploy.js --network goerli
```
**Note:** Make sure your wallet has test ETH for gas fees.  

---

# Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## 📜 License  
This project is licensed under the **MIT License**.
