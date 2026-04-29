// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Add a receive function to accept ether without calldata
    receive() external payable {
        // This function automatically receives ether
        // No additional logic required
    }
}