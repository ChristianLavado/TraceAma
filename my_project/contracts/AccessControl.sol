// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AccessControl {
    mapping(address => bool) public isFarmer;
    mapping(address => bool) public isVerifier;
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Solo el administrador puede ejecutar esto");
        _;
    }

    function addFarmer(address _farmer) public onlyAdmin {
        isFarmer[_farmer] = true;
    }

    function addVerifier(address _verifier) public onlyAdmin {
        isVerifier[_verifier] = true;
    }
}
