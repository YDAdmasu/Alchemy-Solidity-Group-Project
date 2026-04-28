# Storage Variables in Solidity

## What are storage variables?
- Variables declared **directly in contract scope** (not inside functions)
- Solidity stores them in **contiguous storage slots** (like an array)

## Example

```solidity
contract Example {
  uint256 a;      // slot 0x0
  uint256 b;      // slot 0x1
  bool public c;  // slot 0x2

  function store() external {
    a = b;        // reads slot 0x1 → writes to slot 0x0
    uint x = b;   // reads slot 0x1 → stores in memory (not persistent)
  }
}


##Key Facts about Storage Slots
Fact	Explanation
🔭 Slot allocation	Every non-constant contract‑scope variable gets a slot
📏 Slot size	32 bytes (0x1 means 0x000...001)
🔢 Contiguous order	Slots assigned sequentially: 0x0, 0x1, 0x2, …
💸 High gas cost	Reading/writing storage is much more expensive than memory or calldata
🎒 Packing	Multiple small variables can be packed into one slot (auto or manual)



##➕ Additional Details
Packing Rules (Automatic)

If consecutive variables fit into 32 bytes, Solidity packs them into one slot.

uint128 a;   // 16 bytes
uint64  b;   // 8 bytes  → all fit into slot 0
uint64  c;   // 8 bytes  (total 32 bytes)

Smaller types first for maximum packing efficiency

A uint256 after a uint128 starts a new slot (doesn't fit)