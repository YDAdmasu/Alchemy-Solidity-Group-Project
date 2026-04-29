// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    // Three public storage variables for the addresses
    address public depositor;
    address public beneficiary;
    address public arbiter;
    
    // Constructor takes arbiter and beneficiary addresses (in that order)
    constructor(address _arbiter, address _beneficiary) {
        depositor = msg.sender;      // The deployer becomes the depositor
        arbiter = _arbiter;          // Store the arbiter address
        beneficiary = _beneficiary;  // Store the beneficiary address
    }
}