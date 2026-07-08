// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TraceAmaToken {
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
        owner = msg.sender;
        batchCount = 0;
    }

    function registerBatch(string memory _origin, uint256 _weight, string memory _ipfsHash) public {
        batchCount++;
        batches[batchCount] = Batch(batchCount, _origin, _weight, _ipfsHash, msg.sender);
        emit BatchRegistered(batchCount, _origin, msg.sender);
    }
}
