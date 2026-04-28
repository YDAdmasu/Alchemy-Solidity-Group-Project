# Functions in Solidity (Beginner)

## What is a function?
A reusable block of code. 

---

## Function Keywords – Visibility & Mutability

```solidity
contract Example {
  // private + pure
  function example1() private pure {
    // private: call me within this contract only
    // pure: I cannot read or write to storage
  }

  // internal + view
  function example2() internal view {
    // internal: call me within this contract OR in contracts that inherit
    // view: I can read from storage, but cannot write
  }

  // public + payable
  function example3() public payable {
    // public: call me inside AND outside this contract
    // payable: you can send me ether!
  }

  // external
  function example4() external {
    // external: call me ONLY from outside this contract
  }
}

Visibility
Keyword	Where it can be called
private	Only inside this contract
internal	Inside this contract + child contracts
public	Anywhere (inside & outside)
external	Only from outside
Mutability
Keyword	What it can do
pure	Cannot read or write storage
view	Can read storage, cannot write
payable	Can receive ether
(none)	Can read and write storage

## Returning values

contract Example {
  uint public sum;

  constructor(uint x, uint y) {
    sum = add(x, y);
  }

  function add(uint x, uint y) private pure returns(uint) {
    return x + y;
  }
}

-returns(uint) – declares that the function returns a uint

-return x + y – sends the value back
