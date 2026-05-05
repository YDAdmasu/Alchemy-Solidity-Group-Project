// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Create a public address state variable called owner
    address public owner;
    
    // Constructor function that stores msg.sender in owner
    constructor() {
        owner = msg.sender;
    }
}