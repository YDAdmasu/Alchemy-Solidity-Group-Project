# Enum Type (enum) – Solidity Basics

## What is an Enum?

- `enum` (enumeration) is a user‑defined type that restricts a variable to one of several predefined constant values.
- Improves code readability and maintainability compared to using raw integers.

## Why Use Enums?

Without enums, you might use magic numbers:

```solidity
if (player.movement == 0) {
    // moving up
} else if (player.movement == 1) {
    // moving left
}



Problems:

    Hard to remember what 0 and 1 mean.

    If the numbers change elsewhere, your code breaks.

    Comments are required but not enforced.

With enums:


enum Directions { Up, Left, Down, Right }
if (player.movement == Directions.Up) {
    // moving up
} else if (player.movement == Directions.Left) {
    // moving left
}

Benefits:

    Clear, self‑documenting code.

    The enum definition can be shared across contracts.

    Type safety – only valid enum values can be assigned.

Enum Internals

    Each enum value gets an integer index starting from 0.

    Directions.Up → 0, Directions.Left → 1, etc.

    You can convert between enum and integer using uint() or explicit casting.

solidity

Directions public dir = Directions.Down;
uint index = uint(dir); // index = 2

Example Enum
solidity

enum Status { Pending, Active, Closed }
Status public current = Status.Pending;

Task Example (Foods)

Given the enum Foods { Apple, Pizza, Bagel, Banana }, create four public variables storing each value.
solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    enum Foods { Apple, Pizza, Bagel, Banana }

    Foods public food1 = Foods.Apple;
    Foods public food2 = Foods.Pizza;
    Foods public food3 = Foods.Bagel;
    Foods public food4 = Foods.Banana;
}

You can assign them in any order or use your own favorite foods.
Key Takeaways

    Enums make code more readable and less error‑prone.

    Each value maps to an integer index (starting from 0).

    Enums can be used as function parameters or return types.

    They are particularly useful for state machines (e.g., Pending, Approved, Rejected).

Based on Alchemy University – Learn Solidity course (Basic Data Types: Enum)
text


