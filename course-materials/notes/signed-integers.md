# Signed Integers (int) – Solidity Basics

## What is a Signed Integer?

- Signed integers can be **positive**, **negative**, or **zero**.
- In Solidity, the keyword `int` is used (short for `int256` – 256 bits).

## Range of Signed Integers

- With `n` bits, the total possible values = `2^n`.
- The range covers both negative and positive: from `-2^(n-1)` to `2^(n-1) - 1`.
- Example comparison (8 bits – `int8` vs `uint8`):

| Type    | Bits | Range                   | Total Values |
|---------|------|-------------------------|--------------|
| `uint8` | 8    | 0 to 255                | 256 |
| `int8`  | 8    | -128 to 127             | 256 |

Notice both have 256 distinct values – the difference is how the bit patterns are interpreted (two's complement for signed).

## Available `int` Sizes

- `int8`, `int16`, `int32`, ..., `int256`.
- `int` alone is `int256`.

## Absolute Difference

- To calculate the absolute difference between a positive `a` and a negative `b`:
  - `a - b` because `b` is negative, so subtracting a negative adds its magnitude.
  - Example: `a = 10`, `b = -15` → `a - b = 10 - (-15) = 25`.
- This works because `-b` becomes positive.

## Task Example

Create three public storage integers:

- `a` and `b` as `int8` – one positive, one negative.
- `difference` as `int16` that holds the absolute difference.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    int8 public a = 50;      // positive
    int8 public b = -30;     // negative
    int16 public difference = a - b;   // 50 - (-30) = 80
}

    Using int16 ensures the result fits (range up to 32767).

Key Takeaways

    int types store signed numbers (negative or positive).

    The range is symmetric, but zero takes one positive slot.

    Absolute difference between positive and negative = positive - negative.

    Since Solidity 0.8.0, overflow/underflow reverts.

Based on Alchemy University – Learn Solidity course (Basic Data Types: Signed Integers)