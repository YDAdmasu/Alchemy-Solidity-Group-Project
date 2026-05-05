// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    // Three public storage variables for the addresses
    address public depositor;
    address public beneficiary;
    address public arbiter;
    
    // Constructor takes arbiter and beneficiary addresses (in that order)
    // Must be payable to accept the initial deposit
    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender;      // The deployer becomes the depositor
        arbiter = _arbiter;          // Store the arbiter address
        beneficiary = _beneficiary;  // Store the beneficiary address
    }
    
    // Approve function to transfer funds to beneficiary
    // Only the arbiter can call this function
    function approve() external {
        // Require that the caller is the arbiter
        require(msg.sender == arbiter, "Only arbiter can approve");
        
        // Move the contract's balance to the beneficiary
        (bool success, ) = beneficiary.call{ value: address(this).balance }("");
        require(success, "Transfer failed");
    }
}