// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    // Three public storage variables for the addresses
    address public depositor;
    address public beneficiary;
    address public arbiter;
}