# Unsigned Integers (uint) – Solidity Basics

## What is an Integer?

- Integers are whole numbers (no fractions), including negatives and positives.
- Examples: `-2, -1, 0, 1, 2, ...`

## Signed vs Unsigned

- Signed integers have a `+` or `-` sign to indicate positivity or negativity.
- **Unsigned integers have no sign** – they can only be **non‑negative** (zero or positive).

## Solidity's `uint` Type

- `uint` stands for unsigned integer.
- You can specify the number of bits: `uint8`, `uint16`, `uint32`, …, `uint256`.
- `uint` alone is an alias for `uint256` (256 bits).

## Range of an Unsigned Integer

- With `n` bits, you can represent `2^n` distinct values.
- Since negatives are not allowed, the range is from **0** to **2^n – 1**.
- Example (`uint8`): `0` to `2^8 – 1 = 255`.
- Max value formula: `(2 ^ n) – 1`.

## Example Ranges

| Type    | Bits | Min | Max |
|---------|------|-----|-----|
| `uint8`  | 8    | 0   | 255 |
| `uint16` | 16   | 0   | 65,535 |
| `uint256`| 256  | 0   | ~1.16e77 |

## What Happens on Overflow?

- In Solidity (before 0.8.x), overflow silently wrapped around.
- From Solidity 0.8.0 onward, overflow **reverts** the transaction.
- For example, adding `200 + 100` on a `uint8` would revert.

## Task Example

Create three public unsigned integer storage variables:

- `a` as `uint8` with any value between 0 and 255.
- `b` as `uint16` with a value of at least 256.
- `sum` as `uint256` that equals `a + b`.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint8 public a = 100;      // any 0-255
    uint16 public b = 256;     // at least 256
    uint256 public sum = a + b; // automatically computed
}












Key Takeaways

    uint types are non‑negative.

    Size determines max value: 2^n – 1.

    Overflow causes a revert in Solidity 0.8+.

    You can mix different uint sizes in arithmetic; the result may need a larger type like uint256.

Based on Alchemy University – Learn Solidity course (Basic Data Types: Unsigned Integers)
text


---
