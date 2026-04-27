# String Literals – Solidity Basics

## What is a String Literal?

- A fixed sequence of characters enclosed in double quotes, e.g., `"Hello World"`.
- Any fixed value can be called a literal: `42`, `true`, `"Hello"`.

## Storing String Literals

In Solidity, string literals can be stored in:

- **`bytes`** – dynamic byte array.
- **`string`** – dynamic UTF-8 string (recommended for human‑readable text).
- **Fixed-size byte arrays** like `bytes32` – for strings shorter than 32 bytes (more gas efficient).

```solidity
bytes  msg1 = "Hello World";
string msg2 = "Hello World";
bytes32 msg3 = "Hello World";   // fits, padded with zeros


bytes32 vs string
Type	Storage	Gas Efficiency	Use case
bytes32	Fixed size	High for short strings (<32B)	Short identifiers, keys
string	Dynamic	Lower, but flexible	Long human‑readable messages
Character Encoding (UTF-8)

    ASCII characters (e.g., a, c) use 1 byte each.

    Unicode characters (e.g., ć, 你) may use multiple bytes.

    Example: bytes32 can hold 32 ASCII letters, but only ~16 multi‑byte characters.

solidity

bytes32 msg1 = "cccccccccccccccccccccccccccccccc"; // 32 'c's → OK
bytes32 msg2 = "ćććććććććććććććć";               // 16 'ć's → OK
// Adding one more ć causes a compile error (exceeds 32 bytes).

Real‑World Practice

    Large strings (documents, legal agreements) are often stored off‑chain (IPFS, Arweave) with only the hash stored on the blockchain.

    Hashing + digital signatures prove the original document existed and was signed.

Task Example (Hello World)

Create:

    msg1 as bytes32 storing "Hello World".

    msg2 as string storing a sentence longer than 32 bytes.

solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    bytes32 public msg1 = "Hello World";
    string public msg2 = "This string is definitely longer than thirty two bytes.";
}

Key Takeaways

    string literals are UTF‑8 encoded.

    Use bytes32 for short, fixed‑length strings (gas savings).

    Use string for long or unpredictable‑length text.

    Off‑chain storage + on‑chain hash is common for large documents.

Based on Alchemy University – Learn Solidity course (Basic Data Types: String Literals)
text


---
