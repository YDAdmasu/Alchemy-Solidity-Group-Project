# Smart Contracts Overview (Alchemy University)

## Key Takeaways from Video

1. **Transactions begin at an EOA** (Externally Owned Account – a public/private key pair)
2. **Transactions occur sequentially** (one after another)
3. **Transactions set a gas limit** (max gas to spend)
4. **Transactions send calldata** targeting a specific contract method
5. **Smart contracts can call each other** within the same transaction

## How Contract Deployment Works

1. Write Solidity code
2. Compile to **creation bytecode**
3. Send a transaction with that bytecode in the `data` field (leave `to` field blank)
4. EVM node deploys the contract to a new address
5. Contract can store values and keep state across transactions

## EVM Opcodes & Gas

- Solidity compiles down to **bytecode** → bytecode maps to **opcodes** (e.g., `ADD`, `MUL`, `SSTORE`)
- Each opcode consumes a certain amount of **gas**
- Gas cost is **deterministic** (can be pre‑calculated) based on the opcodes used
- Simple opcodes have **fixed gas**
- Complex opcodes (like `SSTORE`) have variable gas and may offer **gas refunds** (e.g., clearing a storage slot)

**Important distinction:**
- Gas *cost per opcode* = deterministic
- Gas *price* (in ETH or native currency) = fluctuates based on market

## Transaction Structure

| Field | Description |
|-------|-------------|
| `from` | EOA address that signs the transaction |
| `to` | Target contract (blank for contract creation) |
| `value` | Amount of native currency (ETH) to send |
| `gas` | Max gas units the sender is willing to use |
| `gasPrice` | Amount paid per unit of gas |
| `data` | Calldata (method signature + arguments) or creation bytecode |
| `signature` | Cryptographic proof of authenticity |

## Message Calls

- A transaction can trigger a chain of contract calls (Contract A → B → C → ...)
- All happen within the **same transaction**
- The transaction only finalizes after the entire call stack returns

## Useful Resource

- [evm.codes](https://www.evm.codes) – interactive EVM opcode reference

---

*Based on Alchemy University's "Learn Solidity" course – Smart Contracts Overview section*