// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    int8 public a = 50;      // positive value
    int8 public b = -30;     // negative value
    int16 public difference = a - b;   // 50 - (-30) = 80 (absolute difference)
}