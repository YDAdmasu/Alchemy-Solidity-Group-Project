
---

# 📄 3. Mappings — `03-mappings.md`

```md
# 📘 Mappings in Solidity (Reference Types)

## Overview
Mappings are key-value storage structures in Solidity. They are similar to dictionaries or hash maps in other programming languages.

They are extremely efficient for quick data lookup.

---

## 🧠 Syntax

```solidity
mapping(keyType => valueType)

Example:

mapping(address => uint) public balances;
💻 Basic Example
pragma solidity ^0.8.0;

contract MappingExample {

    mapping(address => uint) public balances;

    function setBalance(uint _amount) public {
        balances[msg.sender] = _amount;
    }

    function getBalance(address _user) public view returns (uint) {
        return balances[_user];
    }
}
⚙️ How Mappings Work
Store data as key-value pairs
Each key is unique
Default value is returned if key doesn’t exist
🧠 Important Rules
1. No iteration

You cannot loop through mappings directly.

2. No length property

Mappings do not store size information.

3. Default values

If a key does not exist, Solidity returns default value:

uint → 0
bool → false
address → 0x0
📦 Mapping with Struct Example
struct User {
    string name;
    uint age;
}

mapping(address => User) public users;
📌 Key Points
Fast lookup system (O(1))
Used for storing user data
Cannot be iterated
Always stored in storage (not memory)
🚀 Real Use Cases
Wallet balances
Ownership tracking
Access control systems
User profiles