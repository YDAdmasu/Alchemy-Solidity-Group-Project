// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        // Send empty calldata or calldata that doesn't match any function
        (bool success, ) = hero.call("");
        require(success);
    }
}