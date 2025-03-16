# MyToken
A simple ERC-20 token implementation using Hardhat. This project demonstrates basic token functionalities such as minting, transferring, and querying balances.

## 📌 Features

	•	Mint tokens (Owner only)
	•	Transfer tokens between accounts
	•	Check account balances
	•	Deployable on local Hardhat Network

## 🚀 Getting Started

1️⃣ Prerequisites

>Ensure you have the following installed:

	•	Node.js (v16 or later)
	•	Hardhat

2️⃣ Install Dependencies

>Clone this repository and install the required packages:
```sh
git clone https://github.com/your-username/MyTokenProject.git
```
* cd MyTokenProject

* npm install

## ⚙️ Usage

#### **3️⃣ Compile the Contract**  
>Run the following command to compile the smart contract:  

```sh
npx hardhat compile
```  

#### **4️⃣ Run a Local Blockchain (Hardhat Network)**  
>To test the contract locally, start a local blockchain:  

```sh
npx hardhat node
```  

#### **5️⃣ Deploy the Contract (Using Hardhat)**  
>In a new terminal window, deploy the contract to the local Hardhat Network:  

```sh
npx hardhat run scripts/deploy.js --network localhost
```  

>Once deployed, the contract address will be displayed in the terminal.  

---

## **🚀 Alternative Deployment: Using Remix Ethereum IDE**  

>If you prefer deploying the contract via **Remix**, follow these steps:  

1️⃣ Open **[Remix Ethereum IDE](https://remix.ethereum.org/)**.  
2️⃣ Click on **File Explorer** (📂 icon) and create a new file: **MyToken.sol**.  
3️⃣ Copy and paste the contract code from `contracts/MyToken.sol` into the new file.  
4️⃣ Go to **Solidity Compiler** (⚙️ icon), select the Solidity version (e.g., `0.8.17`), and click **Compile MyToken.sol**.  
5️⃣ Switch to **Deploy & Run Transactions** (🚀 icon), select **Injected Provider - Metamask** or **Remix VM (London)** as the environment.  
6️⃣ Click **Deploy**, and Remix will deploy the contract on your selected network.  

You can now interact with your token contract via Remix's UI.  

---

### **🔗 Deploy to a Testnet (Optional)**  
If you want to deploy the contract to a testnet (e.g., **Goerli** or **Sepolia**), configure `hardhat.config.js` with a provider like **Alchemy** or **Infura**, and then run:  

```sh
npx hardhat run scripts/deploy.js --network goerli
```  

Ensure you have test ETH in your wallet for gas fees.  
🚀

# Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
