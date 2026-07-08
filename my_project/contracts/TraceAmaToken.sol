// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./BaseRelayRecipient.sol";

/**
 * @title TraceAmaToken
 * @dev Contrato de trazabilidad botánica con soporte para meta-transacciones (Gas Relay).
 */
contract TraceAmaToken is BaseRelayRecipient {
    address public owner;
    uint256 public batchCount;

    struct Batch {
        uint256 id;
        string originLocation;
        uint256 weightKg;
        string ipfsCertificateHash;
        address farmer;
    }

    mapping(uint256 => Batch) public batches;

    event BatchRegistered(uint256 id, string originLocation, address farmer);

    constructor() {
        // Usamos _msgSender() en lugar de msg.sender para que sea gratis
        owner = _msgSender();
        batchCount = 0;
    }

    function registerBatch(string memory _origin, uint256 _weight, string memory _ipfsHash) public {
        batchCount++;
        
        // Usamos _msgSender() al guardar la información del agricultor
        batches[batchCount] = Batch(batchCount, _origin, _weight, _ipfsHash, _msgSender());
        
        // Usamos _msgSender() al emitir el evento
        emit BatchRegistered(batchCount, _origin, _msgSender());
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
