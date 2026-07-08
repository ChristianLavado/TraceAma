# TraceAma - Smart Contract Project

A Hardhat-based smart contract project built for the "Innovando por un Futuro Sostenible" Hackathon, featuring integration with EVM-compatible networks (Polygon). This project demonstrates a traceability and tokenization contract for botanical inputs, addressing information asymmetry in the agricultural supply chain.

## Project Overview

This project includes:

- **Traceability Contract**: An ERC-1155 smart contract that tokenizes verified batches of sustainable agricultural products
- **Supply Chain Optimization**: Reduces transaction costs and connects local farmers directly with final buyers
- **Network Integration**: Configured for deployment on EVM-compatible testnets (Polygon Amoy)
- **TypeScript Support**: Full TypeScript integration with Hardhat
- **Modern Hardhat**: Uses the latest Hardhat features

## Smart Contracts

### TraceAmaToken.sol
A supply chain traceability contract that:
- Mints ERC-1155 tokens representing unique batches of botanical inputs
- Stores decentralized metadata (IPFS links) for origin verification
- Tracks the contract owner and authorized verifiers
- Emits events when new batches are registered

## Project Structure

```text
TraceAma-Project/
├── contracts/
│   ├── TraceAmaToken.sol        # Main ERC-1155 traceability contract
│   └── AccessControl.sol        # Role management for farmers and verifiers
├── scripts/
│   ├── deployTraceAma.js        # EVM deployment script
│   └── process_data.py          # Python script for local data processing
├── test/
├── ignition/
│   └── modules/
└── hardhat.config.ts            # Hardhat configuration
