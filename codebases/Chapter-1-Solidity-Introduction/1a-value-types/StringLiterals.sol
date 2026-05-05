// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // "Hello World" is 11 characters, fits in bytes32 (0-padded)
    bytes32 public msg1 = "Hello World";

    // This string is longer than 32 bytes (approx 54 characters)
    string public msg2 = "This string is definitely longer than thirty two bytes.";
}