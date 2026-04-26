---
marp: true
---

# Smart Contracts: A Blockchain Program

A smart contract is blockchain-deployed code. For example:

```solidity
contract Agreement {
    address recipient;
    bool conditionIsMet;

    function payout() external {
        if (conditionIsMet) {
            sendValue(recipient);
        }
    }
}


Deploying a Contract

    ⚙️ Compile your Solidity to bytecode

    ✉️ Send a transaction containing the bytecode to an EVM node

    🏡 The node calculates an address for your new contract

Contract Deployment

(Image placeholder – you can add a screenshot later)
Opcode	Name	Description	Gas
0x00	STOP	Halts execution	0
0x01	ADD	Addition operation	3
0x02	MUL	Multiplication operation	5
0x03	SUB	Subtraction operation	3

EVM Opcodes Reference
Key Takeaways (Deployment)

    ⚙️ Contracts are compiled to creation bytecode

    ⛓ The data field contains your creation bytecode

    📭 The to field is left blank to deploy a contract

    🏡 Your contract will have an address, balance, and runtime bytecode

Transaction Life Cycle

(Image placeholder)
Key Takeaways (Transactions)

    🥾 Transactions begin at an EOA (Externally Owned Account)

    ☝️ Transactions occur sequentially

    ⛽️ Transactions set a gas limit

    🎯 Transactions send calldata, targeting a contract method

    🌐 Smart contracts can call each other within the same transaction

Detailed Notes (Alchemy University)
How Contract Deployment Works (Expanded)

    Write Solidity code

    Compile to creation bytecode

    Send a transaction with that bytecode in the data field (leave to field blank)

    EVM node deploys the contract to a new address

    Contract can store values and keep state across transactions

EVM Opcodes & Gas (Detailed)

    Solidity compiles down to bytecode → bytecode maps to opcodes (e.g., ADD, MUL, SSTORE)

    Each opcode consumes a certain amount of gas

    Gas cost is deterministic – can be pre‑calculated based on the opcodes used

    Simple opcodes have fixed gas

    Complex opcodes (like SSTORE) have variable gas and may offer gas refunds (e.g., clearing a storage slot)

Important distinction:

    Gas cost per opcode = deterministic

    Gas price (in ETH or native currency) = fluctuates based on market

Transaction Structure
Field	Description
from	EOA address that signs the transaction
to	Target contract (blank for contract creation)
value	Amount of native currency (ETH) to send
gas	Max gas units the sender is willing to use
gasPrice	Amount paid per unit of gas
data	Calldata (method signature + arguments) or creation bytecode
signature	Cryptographic proof of authenticity
Message Calls

    A transaction can trigger a chain of contract calls (Contract A → B → C → …)

    All happen within the same transaction

    The transaction only finalizes after the entire call stack returns

Useful Resource

    evm.codes – interactive EVM opcode reference

Combined from Alchemy University's "Learn Solidity" course – Smart Contracts Overview
text

