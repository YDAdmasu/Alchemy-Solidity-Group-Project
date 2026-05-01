📘 Chapter 3: Reference Types in Solidity
Overview

In Solidity, reference types are used to store more complex data structures. Unlike value types (which store data directly), reference types store a reference to the data location.

The main reference types are:

Arrays
Structs
Mappings
📄 1. Arrays — 01-arrays.md
# 📘 Arrays in Solidity (Reference Types)

## Overview
Arrays in Solidity are reference types used to store multiple values of the same data type in a single variable. They are essential when working with lists of data such as users, balances, or records.

---

## 🧠 Types of Arrays

### 1. Fixed-size Array
A fixed-size array has a predefined length that cannot be changed.

```solidity
uint[5] public numbers;
Stores exactly 5 elements
Memory size is fixed at compile time
2. Dynamic Array

A dynamic array can grow or shrink during execution.

uint[] public numbers;
Size can change
Most commonly used in smart contracts
⚙️ Common Array Operations
Adding elements (push)
numbers.push(10);
Removing last element
numbers.pop();
Getting length
numbers.length;
💻 Example Contract
pragma solidity ^0.8.0;

contract ArrayExample {

    uint[] public numbers;

    function addNumber(uint _num) public {
        numbers.push(_num);
    }

    function removeLast() public {
        numbers.pop();
    }

    function getLength() public view returns (uint) {
        return numbers.length;
    }
}
📌 Key Points
Arrays store multiple values of same type
Index starts from 0
Dynamic arrays are widely used in real-world contracts
Gas cost increases with array size
🚀 Real Use Cases
Storing list of users
Keeping transaction history
Managing votes in voting systems