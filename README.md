# Foundry FundMe Project

A decentralized funding contract project built with Solidity and Foundry, demonstrating basic crowdfunding mechanics with Chainlink price feeds.

## Project Overview

This project allows users to fund a contract with ETH, enforcing a minimum USD amount using Chainlink price feeds. The contract owner can withdraw funds, and the project includes comprehensive tests using Foundry's Forge framework.

### Features

* Fund a contract with ETH based on USD conversion
* Minimum funding amount enforced
* Owner-only withdraw functionality
* Cheaper withdraw method for gas optimization
* Full test coverage using Foundry and mocks for price feeds

## Project Structure

```
├── src/                 # Solidity smart contracts
│   ├── FundMe.sol       # Main funding contract
│   └── PriceConverter.sol # Library for price conversions
├── script/              # Deployment and interaction scripts
│   ├── DeployFundMe.s.sol
│   ├── Interactions.s.sol
│   └── HelperConfig.s.sol
├── test/                # Test contracts using Forge
│   ├── FundMeTest.t.sol
│   └── InteractionsTest.t.sol
├── lib/                 # External dependencies (Chainlink, forge-std, etc.)
└── foundry.toml         # Foundry configuration
```

## Prerequisites

* [Foundry](https://book.getfoundry.sh/getting-started/installation)
* Node.js & npm
* Git
* Anvil (for local blockchain testing)

## Installation

1. Clone the repository:

```bash
git clone https://github.com/umidjonn11/Foundry-FundMe.git
cd Foundry-FundMe
```

2. Install Foundry dependencies:

```bash
forge install
```

3. Install npm packages if needed:

```bash
npm install
```

## Usage

### 1. Compile contracts

```bash
forge build
```

### 2. Run tests

```bash
forge test
```

### 3. Start local blockchain

```bash
anvil
```

### 4. Deploy scripts

```bash
forge script script/DeployFundMe.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```

### 5. Run interaction scripts

```bash
forge script script/Interactions.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```

## Chainlink Price Feed Setup

* Use remappings in `foundry.toml` to point to Chainlink contracts:

```toml
remappings = [
    "forge-std/=lib/forge-std/src/",
    "@chainlink/=lib/chainlink-brownie-contracts/contracts/"
]
```

* For testing locally, use `MockV3Aggregator` to simulate ETH/USD price feeds.

## Testing

* Use Foundry's `vm` cheats to simulate transactions, pranks, and funding.
* Mocks are used for price feeds to enable testing without live Chainlink data.

## Notes

* Ensure proper paths for imports to avoid errors like `File import callback not supported (6275)`.
* Always specify contract names for scripts with multiple contracts:

```bash
forge script script/Interactions.s.sol --tc InteractionsTest
```

* Use Anvil addresses as mock accounts for testing user funding and withdrawals.

## Resources

* [Foundry Book](https://book.getfoundry.sh/)
* [Chainlink Docs](https://docs.chain.link/docs/get-a-random-number/)
* [Forge Std Library](https://github.com/foundry-rs/forge-std)

---

This README provides a complete guide to run, test, and interact with the FundMe contract on local and test networks.
