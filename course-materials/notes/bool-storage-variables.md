# Boolean Storage Variables – Solidity Basics

## Storage Variables

- **Storage variables** live permanently on the blockchain.
- When you modify a storage variable inside a transaction, the new value is **globally accessible** for future reads and interactions.
- Declaration inside a contract:

```solidity
contract Contract {
    bool myVariable;
}

Default Values

    Uninitialized storage variables default to 0x0 in raw storage.

    In Solidity, for a bool, this default value translates to false.

    So myVariable starts as false when the contract is deployed.

Making a Variable public

    Adding the public keyword automatically creates a getter function with the same name.

    Example:
    bool public myVariable = true;

Now you can call myVariable() from outside the contract to read its value.
Task Example

Create two public boolean storage variables:

    a initialized to true

    b initialized to false

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    bool public a = true;
    bool public b = false;
}

Key Takeaways

    bool can be true or false.

    Default value is false.

    public creates a free getter function.

    Storage variables are persisted across transactions.

Based on Alchemy University – Learn Solidity course (Basic Data Types: Booleans)